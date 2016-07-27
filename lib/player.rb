# Just chilling again
class Player
  attr_reader :score, :angle, :x, :y, :loc

  def initialize
    @image = Gosu::Image.new('assets/images/man.png')
    @x = @y = @vel_x = @vel_y = @angle = 0.0
    @score = 0
    @loc = []
  end

  def warp(x, y)
    @x = x
    @y = y
  end

  def turn_left
    @angle -= 4
  end

  def turn_right
    @angle += 4
  end

  def accelerate
    @vel_x += Gosu.offset_x(@angle, 0.7)
    @vel_y += Gosu.offset_y(@angle, 0.7)
  end

  def move_back
    @vel_x += Gosu.offset_x(@angle, -0.6)
    @vel_y += Gosu.offset_y(@angle, -0.6)
  end

  def move
    @x += @vel_x
    @y += @vel_y
    @x %= 800
    @y %= 600

    @vel_x *= 0.75
    @vel_y *= 0.75
  end

  def draw
    @loc.pop
    @loc.pop
    @loc.push(@x)
    @loc.push(@y)

    @image.draw_rot(@x, @y, 1, @angle)
  end
end
