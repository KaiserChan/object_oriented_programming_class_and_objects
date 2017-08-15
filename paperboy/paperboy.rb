class Paperboy
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0

    @minimum = 50

    @base_pay = 0.25
    @bonus_pay = 0.50
    @penalty = 2
  end

  def name
    @name
  end

  def earnings
    @earnings = @earnings + total_pay
  end

  def quota
    @minimum + (@experience / 2)
  end

  def paper_delivered(start_address, end_address)
    (end_address - start_address)  + 1
  end


  def total_pay(deliver)
    if deliver == quota
       @earnings += @minimum * @base_pay
    elsif deliver  < quota
       @earnings += deliver * @base_pay - @penalty
    else
       @earnings = (@minimum * @base_pay) + ((deliver - @minimum) * @bonus_pay)
    end
  end

  def report
    "I am #{@name}, I've been delivered #{quota} papers and I have earned $#{@earnings} so far!"
  end
end


johnny = Paperboy.new("Johnny")

puts "What's the 1st house number?"
house_1 =  gets.chomp.to_i

puts "What's the 2nd house number?"
house_2 = gets.chomp.to_i

total_houses = house_2 - house_1 + 1

puts johnny.paper_delivered(house_1, house_2)
puts johnny.total_pay(total_houses)
puts johnny.report
