class Wizard
  attr_reader :name

  def initialize(name, bearded = {bearded: true})
    @name = name
    @bearded = bearded
    @rested = 0
  end

  def bearded?
    @bearded[:bearded]
  end

  def incantation(spell)
    "sudo " + spell
  end

  def rested?
    if @rested < 3
      true
    else
      false
    end
  end

  def cast
    @rested += 1
    "MAGIC MISSILE"
  end


end
