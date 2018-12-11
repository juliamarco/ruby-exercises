class LeatherChair
  attr_reader :fade

  def initialize
    @fade = 0
  end

  def faded?
    if @fade > 0
      true
    else
      false
   end
  end

  def expose_to_sunlight
    @fade += 1
  end


end
