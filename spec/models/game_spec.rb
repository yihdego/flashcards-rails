require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:deck) {Deck.create(title: "Seahawks Facts", description: "Questions about the Seattle Seahawks football team.")}
  let(:card) { Card.create(question: "Who's the 12th Man", answer: "the fans", deck_id: deck.id) }
  let(:game) { Game.new( deck: deck) }

  describe "game" do
    it 'has a deck' do
      expect(game.deck).to eq(deck)
    end
    it 'has a default score of zero' do
      expect(game.score).to eq 0
    end
    it 'has cards through decks' do
      expect(game.deck.cards).to include(card)
    end
  end

  describe 'game methods' do
    it 'updates the score' do
      game.update_score
      expect(game.score).to eq 1
    end
    it 'returns answer Correct if the answer is correct' do
      expect(game.check_correct(card, "the fans")).to eq "Answer Correct!"
    end
    it 'returns Incorrect Answer! if the answer is incorrect' do
      expect(game.check_correct(card, "not the fans")).to eq "Incorrect Answer!"
    end
    it 'updates the score when the answer is correct' do
      expect{ game.check_correct(card, "the fans") }.to change{ game.score }.by 1
    end
  end
end
