class PagesController < ApplicationController
  def home
    @items = Item.all
  end

  def about
  end

  def dashboard
    @bookings = Booking.where(user_id: current_user)
    @item = Item.new
    @user = current_user
    @bookings = @user.bookings
  end
end
