class Bag
  attr_reader :candies,
              :taken

  def initialize
    @candies = []
    @taken = []
  end

  def count
    @candies.count
  end


  def empty?
    @candies.empty?
  end

  def contains?(type)
    @candies.all? do |candy|
      candy.type == type
    end
  end

  def grab(type)
    candy = @candies.find do |candy|
        candy.type == type
        @candies.delete(candy)
        # @taken << candy
    end
  end

  def take(number)
      number.times do
        @taken << @candies[0]
        @candies.shift
      end
      return @taken
  end




end
