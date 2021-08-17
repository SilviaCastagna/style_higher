class PagesController < ApplicationController
  def home
    @items = Item.all
  end

  def about
  end
end
