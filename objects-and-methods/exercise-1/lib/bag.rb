require 'pry'
class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def count
    @candies.count
  end

  def empty?
    @candies.empty?
  end

  def contains?(type)
    @candies.each do |candy|
      if candy.type.include?(type)
        return true
      else
        return false
      end
    end
  end

end
