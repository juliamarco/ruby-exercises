class Centaur
  attr_reader :name,
              :breed,
              :rested

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = 0
    @standing = true
    @rested = false
  end

  def shoot
    @cranky += 1
    if cranky? || laying?
      return "NO!"
    else
      return "Twang!!!"
    end
  end

  def run
    @cranky += 1
    if cranky? || laying?
      return "NO!"
    else
      return "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @cranky >= 3
      return true
    else
      return false
    end
  end

  def standing?
    @standing
  end

  def sleep
    @cranky = 0
    if @standing == true
      return "NO!"
    else
    end
  end

  def lay_down
    @standing = false
  end

  def laying?
    if @standing == true
      return false
    else
      return true
    end
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    if standing?
    @rested = true
    "GET SICK"
    else
      "NO!"
    end
  end


end
