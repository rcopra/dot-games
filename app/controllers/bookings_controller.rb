class BookingsController < ApplicationController
before_action
# simple form is necessary for new page -
# form should be directly on the show page

def create
  raise
  @game = Game.find(params[:id])
  if user_signed_in?
    @booking = Booking.new()
    @booking.game = @game
    @booking.user = current_user
    if @booking.save
      redirect_to @game, notice: "booking was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
end

  private

  # def booking_params
  #   params.require(:booking).permit(:start_date, :end_date)
  # end

end
