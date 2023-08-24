class PagesController < ApplicationController

  def home
  end

  def dashboard
    if user_signed_in?
      @user = current_user
      @user_bookings = @user.bookings
      @user_games = @user.games
    else
      redirect_to new_user_session_path
    end
  end
end
