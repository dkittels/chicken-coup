class GamesController < ApplicationController
  def index
  end

  def create
    @game = Game.new(game_params)
    @game.status = "lobby"

    if @game.save
      flash[:notice] = "Game created successfully!"
      redirect_to game_url(@game)
    else
      flash.now.alert = "Oops, couldn't create game."
      redirect_to browser_index_path
    end
  end

  def show
    @game = Game.find(params[:id])
    @message = Message.new
  end

private

  def game_params
    params.require(:game).permit(:name, :playercount)
  end
end
