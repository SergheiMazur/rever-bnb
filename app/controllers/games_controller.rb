class GamesController < ApplicationController
  before_action :set_game, only: [:edit, :update, :destroy]


  def index
    @games = Game.all
    render layout: 'eventually'
  end

  def show
    @game = Game.find(params[:id])
    @user = current_user
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      redirect_to game_path(@game)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @game.update(game_params)
    redirect_to game_path(@game)
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :rating, :description)
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
