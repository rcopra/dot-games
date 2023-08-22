class BookingsController < ApplicationController

# simple form is necessary for new page -
# form should be directly on the show page

def create
  if user_signed_in?
  raise
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to @booking, notice: "booking was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
end

  private


  def find_booking
    @booking = Booking.find(params[:id])
  end

end
