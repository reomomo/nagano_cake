class Public::ItemsController < ApplicationController

  def index
    @items = Item.page(params[:page]).per(8)
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

  def search_result
    if params[:keyword].present?
      @items = Item.where('name LIKE ?', "%#{params[:keyword]}%")
      @keyword=  params[:keyword]
    else
      @items = Item.all
    end
  end

  private
    def list_params
     　params.require(:item).permit(:genre_id, :name, :introduction, :price, :is_active)
    end

end
