class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end



  private

  def booking_params
    params.require(:booking).permit(:title, :description, :brand)
  end
end
