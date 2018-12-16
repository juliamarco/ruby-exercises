

class Ogre
  attr_reader :name,
              :home,
              :swings,
              :encounter_counter

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    human.encounter_counter += 1
    @encounter_counter += 1
    if human.notices_ogre?
      @swings += 1
    end
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.wakes_up
  end

end
