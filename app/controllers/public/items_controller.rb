class Public::ItemsController < ApplicationController

  def index
    @items = Item.page(params[:page]).per(8)
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

  def search_result
    @items = Item.search(params[:keyword])
  end

  private
    def list_params
     　params.require(:item).permit(:genre_id, :name, :introduction, :price, :is_active)
    end

end
