class GamesController < ApplicationController
  before_action :find_game, only: %i[show edit update destroy]

  def index
    @games = Game.all
    if params[:query].present?
      sql_subquery = <<~SQL
        games.name ILIKE :query
        OR games.description ILIKE :query
      SQL
      @games = @games.where(sql_subquery, query: "%#{params[:query]}%")
    end
    @markers = @games.geocoded.map do |game|
      {
        lat: game.latitude,
        lng: game.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { game: game })
      }
    end
  end

  def show
    @booking = Booking.new
    @markers = [{ lat: @game.latitude, lng: @game.longitude, info_window_html: render_to_string(partial: "info_window", locals: { game: @game }) }]
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
    if current_user.id == @game.user_id
      @game.destroy
      redirect_to games_path, notice: "Game was successfully destroyed.", status: :see_other
    end
  end

  private

  def find_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :description, :price, :photo)
  end
end
