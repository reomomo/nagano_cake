class CartItem < ApplicationRecord
  def price*amount
    cart_item.amount * cart_item.item.add_tax_price
  end
end
