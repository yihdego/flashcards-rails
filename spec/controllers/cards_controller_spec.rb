require 'rails_helper'

RSpec.describe CardsController, type: :controller do

  xcontext 'assigning variables' do
    it 'takes an answer input and assigns it to a variable' do
      params = {answer: 'the fans'}
      post :game_update, params
      expect(assigns[:answer]).to eq('the fans')
    end

    it 'responds with a redirect status'
  end

end
