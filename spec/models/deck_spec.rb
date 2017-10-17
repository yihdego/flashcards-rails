require 'rails_helper'

RSpec.describe Deck, type: :model do
  let(:deck) {Deck.create(title: "Seahawks Facts", description: "Questions about the Seattle Seahawks football team.")}

  context 'attributes' do
    it 'has a title' do
      expect(deck.title).to eq 'Seahawks Facts'
    end

    it 'has a description' do
      expect(deck.description).to eq 'Questions about the Seattle Seahawks football team.'
    end
  end

  context 'associations' do
    it 'has a cards association' do
      expect(deck.cards).to be_empty
    end
  end

end
