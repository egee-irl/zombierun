#
class GameWindow < Gosu::Window
  def initialize
    super 800, 600
    self.caption = 'Zombies'

    @background_image = Gosu::Image.new('assets/images/GrassTextureTerrain1.jpg')

    @player = Player.new
    @zombie = Zombie.new
    @player.warp(400, 300)
    @zombie.warp(70, 400)
    @font = Gosu::Font.new(20)
  end

  def update
    @player.turn_left if Gosu.button_down? Gosu::KbA
    @player.turn_right if Gosu.button_down? Gosu::KbD
    @player.accelerate if Gosu.button_down? Gosu::KbW
    @player.move_back if Gosu.button_down? Gosu::KbS
    @player.move
    @zombie.move
  end

  def draw
    @background_image.draw(0, 0, 0)
    @player.draw
    @zombie.draw(@player)

    # @font.draw("Score: #{@player.score}",
    #            10, 10, 0, 1.0, 1.0, 0xff_ffff00)

    close if @zombie.cur_dist.to_i < 75
  end

  def button_down(id)
    close if id == Gosu::KbEscape
  end
end
