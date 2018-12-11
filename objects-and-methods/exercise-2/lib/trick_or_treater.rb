require_relative '../lib/costume'
require_relative '../lib/bag'
require_relative '../lib/candy'
require 'pry'


class TrickOrTreater

  attr_reader :bag,
              :sugar_level

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
  end

  def dressed_up_as
    @costume.style
  end

  def bag_empty?
    @bag.empty?
  end

  def has_candy?
    if bag_empty?
      return false
    else
      return true
    end
  end

  def candy_count
    @bag.count
  end

  def eat
    @sugar_level += @bag.candies[0].sugar
    @bag.candies.shift
    # binding.pry
    @bag.count
  end


end
