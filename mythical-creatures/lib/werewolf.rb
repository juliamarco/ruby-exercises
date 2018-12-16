class Werewolf
  attr_reader :name,
              :location,
              :victims

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @hungry = false
    @victims = []
  end

  def human?
    @human
  end

  def change!
    @human = !@human
    @hungry = !@hungry
  end

  def wolf?
    @human == false
  end

  def hungry?
    @hungry
  end

  def consumes(victim)
    if wolf?
      @victims << victim
      victim.status = :dead
      @hungry = false
    else
      return "CAN'T!"
    end
  end

end
