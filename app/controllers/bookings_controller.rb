class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
