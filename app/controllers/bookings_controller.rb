class BookingsController < ApplicationController

  def create
    @booking = Booking.new
    @booking.user = current_user
    @item = Item.find(params[:item_id])
    @booking.item = @item
    @booking.save!

    flash[:notice] = "You have successfully booked :)"
    redirect_to dashboard_path
  end

  # def index 
  #   # @bookings = Booking.where(user_id: current_user)
  #   # @bookings = Booking.all
  #   @user = current_user
  #   @user.bookings
  #   # @items = Item.where(item_id: user_id)
  #   # raise
  # end

  # def show
  #   @booking = Booking.find(params[:item_id])
  # end
end
