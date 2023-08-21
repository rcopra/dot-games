class GamesController < ApplicationController
  before_action :find_game, only: %i[show edit update destroy]

  def index
    @games = Game.all
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    if user_signed_in?
      @game = Game.new(game_params)
      @game.user = current_user
      if @game.save
        redirect_to @game, notice: "Game was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def edit
  end

  def update
    if current_user.id == @game.user_id
      if @game.update(game_params)
        redirect_to @game, notice: "Game was successfully updated.", status: :see_other
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  def destroy
  end

  private

  def find_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :description, :price, :poster_url)
  end
end
