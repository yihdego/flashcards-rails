require 'rails_helper'

RSpec.describe GamesController, type: :controller do
  let!(:deck) {Deck.create(title: "Seahawks Facts", description: "Questions about the Seattle Seahawks football team.")}
  let!(:card) { Card.create(question: "Who's the 12th Man", answer: "the fans", deck_id: deck.id) }

  it 'has something' do
    expect { get:create, params: { id: deck.id } }.to change {Game.all.count}.by 1
  end

  it 'responds with a redirect status' do
    get :create, params: { id: deck.id }
    expect(response.status).to eq 302
  end

  context 'answering cards' do
    it 'checks that the answer is correct'
    it 'updates the score if the answer is correct'
    it 'does not change the score if the answer is incorrect'
  end

end
