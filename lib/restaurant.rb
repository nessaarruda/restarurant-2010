class Restaurant
  attr_reader :name,:opening_time, :dishes

  def initialize(opening_time, name)
    @name = name
    @opening_time = opening_time
    @dishes = []
  end


end
