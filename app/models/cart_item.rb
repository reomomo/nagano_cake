class CartItem < ApplicationRecord
  def price*amount
    cart_item.amount * cart_item.item.(Item.price * 1.1).floor
    # add_tax_price
  end
end
