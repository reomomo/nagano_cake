class Public::CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
    # Book.all.sum(@sum_price)
  end
end
