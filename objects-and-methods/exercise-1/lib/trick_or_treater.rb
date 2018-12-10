require 'pry'
class TrickOrTreater
  attr_reader :bag

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    if @bag.empty?
      return false
    else
      return true
    end
  end

  def candy_count
    @bag.count
  end

  def eat
    @bag.candies.shift
  end



end
