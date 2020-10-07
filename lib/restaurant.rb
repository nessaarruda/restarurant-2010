class Restaurant
  attr_reader :name,:opening_time, :dishes

  def initialize(opening_time, name)
    @name = name
    @opening_time = opening_time
    @dishes = []
    @closing_time = 0
  end

  def closing_time(time_lapse)
    test = time_lapse.to_s.insert(-1,":00")
    test2 = (opening_time.to_i + test.to_i)
    test3 = test2.to_s
    @closing_time = test3.insert(-1, ":00")
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    return true if opening_time.to_i < 12
    false
  end

  def menu_dish_names
    capitalized = @dishes.map do |dish|
      dish.upcase
    end
  end
  
end
