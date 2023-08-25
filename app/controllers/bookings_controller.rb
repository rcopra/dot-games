class BookingsController < ApplicationController
  before_action :authenticate_user!

def create
  @game = Game.find(params[:game_id])
  @booking = Booking.new(booking_params)
  @booking.game = @game
  @booking.user = current_user
  if @booking.save
    redirect_to @game, notice: "Booking was successfully created."
  else
    render :new, status: :unprocessable_entity
  end
end

private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
