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

  

  
end