class Turn
  attr_reader :guess, :card

  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    card.answer == guess
  end

  def feedback
    if correct?
      'Well done, that answer is correct!'
    else
      'Sorry, that is not the correct answer!'
    end
  end
end