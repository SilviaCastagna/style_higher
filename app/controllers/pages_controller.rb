class PagesController < ApplicationController
  def home
    @items = Item.all
  end

  def about
  end

  def dashboard
    @user = current_user
    @boookings = @user.bookings
  end
end
