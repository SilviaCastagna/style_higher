class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    # @item = Item.new(params[:item])
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
       redirect_to @item
    else
    end
  end

  private

  def item_params
      params.require(:item).permit(:title, :description, :brand)
  end


end
