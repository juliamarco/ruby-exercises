gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bag'
require_relative '../lib/candy'
require 'pry'

class BagTest < Minitest::Test
  def test_a_new_bag_is_empty
    assert Bag.new.empty?
  end

  def test_count_the_candies_in_an_empty_bag

    assert_equal 0, Bag.new.count
  end

  def test_empty_bag_has_no_candies

    assert_equal [], Bag.new.candies
  end

  def test_put_candy_in_the_bag

    bag = Bag.new
    candy = Candy.new("Sour frogs")
    bag.candies << candy
    assert_equal [candy], bag.candies
  end

  def test_a_bag_with_candies_is_not_empty

    bag = Bag.new
    bag.candies << Candy.new("Nerds")
    refute bag.empty?
  end

  def test_bag_counts_candies

    bag = Bag.new
    bag.candies << Candy.new("Caramelized Almonds")
    assert_equal 1, bag.candies.count
  end

  def test_bag_contains_candies_and_candies_have_a_type

    bag = Bag.new
    bag.candies << Candy.new("Hershey's Kisses")
    # You usually don't want to chain a bunch of different
    # types of things together like this.
    # We'll talk about it more in a few weeks.
    # It's important to understand how these methods work, though.
    type = bag.candies.first.type
    assert_equal "Hershey's Kisses", type
  end

  def test_ask_bag_if_it_contains_a_particular_type_of_candy

    bag = Bag.new
    bag.candies << Candy.new("Lindt chocolate")

    assert bag.contains?("Lindt chocolate")
    refute bag.contains?("Hershey's chocolate")
  end

  def test_get_a_particular_type_of_candy

    bag = Bag.new
    bag.candies << Candy.new("Jawbreaker")
    bag.candies << Candy.new("Jawbreaker")
    bag.candies << Candy.new("Jolly Ranchers")
    candy = bag.grab("Jawbreaker")
    assert_equal "Jawbreaker", candy.type
  end

  def test_grabbing_candy_removes_it_from_the_bag

    bag = Bag.new
    bag.candies << Candy.new("Reese's Pieces")
    bag.candies << Candy.new("Junior Mints")
    bag.candies << Candy.new("Reese's Pieces")
    assert_equal 3, bag.candies.count

    candy = bag.grab "Reese's Pieces"
    assert_equal 2, bag.candies.count
  end

  def test_take_a_number_of_candies_from_the_bag

    bag = Bag.new
    bag.candies << Candy.new("Swedish Fish")
    bag.candies << Candy.new("Milky Way")
    bag.candies << Candy.new("Cotton Candy")
    assert_equal 3, bag.candies.count
    taken = bag.take(2)
    assert_equal 2, taken.size
    assert_equal 1, bag.candies.count
  end

  def test_take_one_candy

    bag = Bag.new
    bag.candies << Candy.new("Lifesavers")

    candy = bag.take(1)
    assert_equal "Lifesavers", candy.first.type
  end
end
