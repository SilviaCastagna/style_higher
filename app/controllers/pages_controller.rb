class PagesController < ApplicationController
  def home
    @items = Item.all
  end

  def about
  end

  def dashboard
    @user = current_user
    @bookings = @user.bookings
  end
end
