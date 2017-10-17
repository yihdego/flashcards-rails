class Game < ApplicationRecord
  belongs_to :deck


  def update_score
    self.score += 1
  end

  def check_correct(card, user_answer)
    if card.answer == user_answer
      update_score
      return "Answer Correct!"
    else
      return "Incorrect Answer!"
    end
  end

end
