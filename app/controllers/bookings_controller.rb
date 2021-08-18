class BookingsController < ApplicationController

  def create
    @booking = Booking.new()
    @booking.user = current_user
    @item = Item.find(params[:item_id])
    @booking.item = @item
    @booking.save!

    flash[:notice] = "You have successfully booked :)"
    redirect_to item_path(@item)
  end

  def index # TO BE FINISHED (showing the items/id/bookings)
    @bookings = Booking.find(current_user)
    # @booking.user = current_user
    @booking.item = @user_id
    # find user by id and show the result on the view page
  end

  # def show
  #   @booking = Booking.find(params[:item_id])
  # end
end
