class Paperboy
  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings

    @minimum = 50
    @quota = @minimum + (@experience / 2)
  end

  def quota


  end
end


johnny = Paperboy.new("Johnny", 0, 0)
