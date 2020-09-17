require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/card'
require './lib/turn'

class TurnTest < Minitest::Test

  def test_it_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    
    assert_instance_of Turn, turn
  end
  
  def test_turn_has_card_object
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    assert_instance_of Card, turn.card
    assert_equal card, turn.card
  end
  
  def test_it_has_a_guess
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    assert_equal "Juneau", turn.guess
  end

  def test_correct_returns_true_if_guess_and_card_answer_match
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)

    assert turn.correct?
  end
  
  def test_correct_return_false_if_guess_and_card_answer_dont_match
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Denver", card)
    turn1 = Turn.new(4, card)

    refute turn.correct?
  end

  def test_feedback_returned_for_correct_and_incorrect_guess
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    turn1 = Turn.new("Aurora", card)

    assert_equal "Well done, that answer is correct!", turn.feedback
    assert_equal "Sorry, that is not the correct answer!", turn1.feedback
  end
  


  
end