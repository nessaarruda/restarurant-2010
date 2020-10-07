class Restaurant
  attr_reader :name,:opening_time, :dishes

  def initialize(opening_time, name)
    @name = name
    @opening_time = opening_time
    @dishes = []
    @closing_time = 0
    # @time_stamp = time_stamp
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

  def announce_closing_time(time)
    sum = opening_time.to_i + time
    back_to_string = sum.to_s.insert(-1, ":00")
    "#{@name} will be closing at #{back_to_string}" # needs variable for AM/PM
  end

#   def time_stamp
#     if @sum <= 12
#       @time_stamp = "AM"
#     else
#       @time_stamp = "PM"
#   end
# end
end
