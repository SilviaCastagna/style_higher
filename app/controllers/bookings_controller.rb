class BookingsController < ApplicationController

  def create
    @booking = Booking.new()
    @booking.user = current_user
    @item = Item.find(params[:item_id])
    @booking.item = @item
    @booking.save

    flash[:notice] = "You have successfully booked :)"
    redirect_to item_path(@item)
  end

  def index
    @bookings = Booking.all
  end

end
