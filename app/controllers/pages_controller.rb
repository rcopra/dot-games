class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @user_bookings = @user.bookings
    @user_games = @user.games
  end
end
