require 'rails_helper'

RSpec.describe Card, type: :model do
  let(:deck) {Deck.create(title: "Seahawks Facts", description: "Questions about the Seattle Seahawks football team.")}
  let(:card) { Card.create(question: "Who's the 12th Man", answer: "the fans", deck_id: deck.id) }

  context 'attributes' do
    it 'has a question' do
      expect(card.question).to eq "Who's the 12th Man"
    end
    it 'has an answer' do
      expect(card.answer).to eq "the fans"
    end
  end

  context 'associations' do
    it 'belongs to a deck' do
      expect(card.deck).to eq(deck)
    end
  end
end
