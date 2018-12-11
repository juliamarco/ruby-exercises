class Baby
  def initialize
    @tiredness = 1
  end

  def tired?
    if @tiredness > 0
      return true
    else
      return false
    end
  end

  def nap
    @tiredness -= 1
  end



end
