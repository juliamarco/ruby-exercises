class Human
  attr_reader :name

  attr_accessor :encounter_counter


  def initialize
    @name = "Jane"
    @encounter_counter = 0
  end

  def notices_ogre?
    if @encounter_counter % 3 == 0
      return true
    else
      return false
    end
  end

  def knocked_out?
    if @encounter_counter == 0
      return false
    elsif @encounter_counter % 6 == 0
      return true
    else
      return false
    end
  end

  def wakes_up
    @encounter_counter = 0
  end

end
