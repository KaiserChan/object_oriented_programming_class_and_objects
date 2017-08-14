class Player

  def initialize(lives, gold_coins, health_points)
    @lives = lives
    @gold_coins = gold_coins
    @health_points = health_points
  end

  def lives
    @lives
  end

  def coins
    @gold_coins
  end

  def health_points
    @health_points
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins > 0 && @gold_coins % 10 == 0
      level_up
    end
  end

  def restart
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1 && @lives >= 1
      @health_points = 10
      @lives -= 1
    end
    if @lives < 1
      puts "Kaiser is dead, and is now restarting"
      restart
    end

  end

  # def restart
  #   @lives == 5
  #   @coins == 0
  #   @health_points == 10
  # end

end


kaiser = Player.new(5, 0, 10)

#
# 10.times do kaiser.collect_treasure
# puts "Kaiser just collected a coin and now has #{kaiser.coins}"
# end

puts "Kaiser now has #{kaiser.lives} lives"
puts "Kaiser now has #{kaiser.coins} coins"
puts "Kaiser now has #{kaiser.health_points} hp"

#
5.times do kaiser.do_battle(10)
puts "Kaiser just took some damages and now has #{kaiser.health_points} hp and #{kaiser.lives} lives"
end


puts "Kaiser now has #{kaiser.lives} lives"
puts "Kaiser now has #{kaiser.coins} coins"
puts "Kaiser now has #{kaiser.health_points} hp"
