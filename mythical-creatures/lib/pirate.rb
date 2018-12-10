class Pirate
  attr_reader :name,
              :job,
              :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = 0
    @booty = 0
  end

  def cursed?
    if @cursed < 3
      return false
    else
      return true
    end
  end

  def commit_heinous_act
    @cursed += 1
  end

  def rob
    @booty += 100
  end



end
