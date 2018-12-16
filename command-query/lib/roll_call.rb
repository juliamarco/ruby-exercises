class RollCall
  attr_reader :names

  def initialize
    @names = []
  end

  def longest_name
    @names.max_by do |name|
      name.length
    end
  end

end
