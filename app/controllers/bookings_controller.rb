class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @item = Item.find(params[:item_id])
    @booking.item = @item
    @booking.total_price = (@item.price * (@booking.end_date.to_date - @booking.start_date.to_date).to_i)
    @booking.save!

    flash[:notice] = "You have successfully booked :)"
    redirect_to dashboard_path
  end

  private
    def booking_params
      params.require(:booking).permit(:end_date, :start_date)
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
