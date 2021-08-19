class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def show
    @item = Item.find(params[:id])
  end

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR description ILIKE :query"
      @items = Item.where(sql_query, query: "%#{params[:query]}%")
    else
      @items = Item.all
    end
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
