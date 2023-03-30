class CartItem < ApplicationRecord
  def price*amount
    cart_item.amount * cart_item.item.(Item.price * 1.1).floor
    # add_tax_price
  end

  belongs_to :item
  belongs_to :customer

  def subtotal
    item.with_tax_price * amount
  end
end
