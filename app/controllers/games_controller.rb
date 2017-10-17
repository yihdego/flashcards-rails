class GamesController < ApplicationController

  def create
    @game = Game.create(deck_id: params[:id])
    first_question = @game.deck.cards[0]
    session[:game] = @game.id
    redirect_to deck_card_path(@game.deck, first_question)
    # redirect_to :controller => 'cards', :action => 'show', :id => first_question.id
  end

  def update
    @game = Game.find(session[:game])
    card = Card.find(params[:card])
    @game.check_correct(card, params[:answer])
    @game.save
    next_question = card.id + 1
    if next_question > @game.deck.cards.count
      redirect_to game_path
    else
      redirect_to deck_card_path(@game.deck, Card.find(next_question))
    end
  end

  def show
    @game = Game.find(session[:game])
  end
end
