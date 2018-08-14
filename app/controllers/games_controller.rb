class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = game.find(params[:id])
    @user = User.new
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render 'new'
  end

  def edit
  end

  def update
    @game.update(game_params)
    redirect_to games_path(@game)
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :rating, :description)
  end

end
