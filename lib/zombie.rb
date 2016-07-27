#
class Zombie
  attr_reader :x, :y, :cur_dist

  def initialize
    @image = Gosu::Image.new('assets/images/zombie.png')
    @vel_x = @vel_y = @angle = 0.0
    @x = rand * 640
    @y = rand * 480
    @loc = []
  end

  def warp(x, y)
    @x = x
    @y = y
  end

  def accelerate
    @vel_x += Gosu.offset_x(@angle, 0.4)
    @vel_y += Gosu.offset_y(@angle, 0.4)
  end

  def move
    @x += @vel_x
    @y += @vel_y
    @x %= 800
    @y %= 600

    @vel_x *= 0.75
    @vel_y *= 0.75
  end

  def draw(player)
    @angle = Gosu.angle(@x, @y, player.x, player.y)
    @cur_dist = Gosu.distance(@x, @y, player.x, player.y)

    accelerate if Gosu.distance(@x, @y, player.x, player.y) > 75
    @image.draw_rot(@x, @y, 2, @angle)
  end
end
