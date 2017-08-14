class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time == 0
        @meal_time = (@meal_time + 12).to_s + "AM"
      elsif @meal_time.between?(1,11)
        @meal_time = @meal_time.to_s + "AM"
      elsif @meal_time == 12
        @meal_time = @meal_time.to_s + "PM"
      elsif @meal_time.between?(13,23)
        @meal_time = (@meal_time - 12).to_s + "PM"
    end
  end

  def meow
    "My name is #{@name} and I eat #{@preferred_food} at #{@meal_time}"
  end
end

garfield = Cat.new("Garfield", "Beer", 15)
ichitaro = Cat.new("Ichitaro", "Sashimi", 12)

puts ichitaro.eats_at
puts ichitaro.meow

puts garfield.eats_at
puts garfield.meow
