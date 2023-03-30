class Public::CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all? { |e|  }
  end
end
