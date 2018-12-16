class Medusa
  attr_reader :name,
              :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if @statues.count < 3
      @statues << victim
      victim.stoned = true
    else
      @statues.first.stoned = false
      victim.stoned = true
    end
  end

end
