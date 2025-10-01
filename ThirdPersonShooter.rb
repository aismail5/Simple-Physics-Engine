class Enemy
  attr_accessor :x, :y, :health
  def initialize(x, y, h)
    @x = x; @y = y; @health = h
  end
end

class Player
  attr_accessor :x, :y, :ammo
  def initialize
    @x = 0; @y = 0; @ammo = 10
  end
  def move(dx, dy) @x += dx; @y += dy end
  def shoot(enemies)
    if @ammo > 0
      enemies.each { |e| e.health -= 4 if e.x==@x && e.y==@y }
      @ammo -= 1
    end
  end
end

player = Player.new
enemies = [Enemy.new(1,1,12), Enemy.new(2,2,16)]
5.times do
  player.move(1,1)
  player.shoot(enemies)
  puts "Player at (#{player.x},#{player.y}) Ammo: #{player.ammo}"
  enemies.each_with_index { |e,i| puts "Enemy #{i} Health: #{e.health}" }
end
puts "Third-Person Shooter Ended."