class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  # has_many_attached :photos
  #doug just wrote this has_many_attached photos so we can upload many photos to an item
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
