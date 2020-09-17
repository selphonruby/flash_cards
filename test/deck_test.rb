require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card'
require './lib/turn'
require './lib/deck'

class DeckTest < Minitest::Test
  
  def setup
    @card1 = Card.new("What is the largest fish in the ocean?", "Whale Shark", :nature)
    @card2 = Card.new("What year did the movie Total Recall debut?", "1990", :entertainment)
    @card3 = Card.new("How many ocean basins are there?", "5", :nature)
    @cards = [@card1, @card2, @card3]
    @deck = Deck.new(@cards)
  end

  def test_it_exists
    assert_instance_of Deck, @deck
  end

  def test_deck_initialized_with_cards
    assert_equal [@card1, @card2, @card3], @deck.cards
  end
  
  def test_it_can_return_count_of_cards
    assert_equal 3, @deck.count
  end

  def test_it_can_return_cards_by_category
    assert_equal [@card1, @card3], @deck.cards_in_category(:nature)
    assert_equal [@card2], @deck.cards_in_category(:entertainment)
    assert_equal [], @deck.cards_in_category(:food)
  end
  
  

  
end