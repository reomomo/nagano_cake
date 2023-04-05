class Order < ApplicationRecord
  enum payment_methods: {
    credit_card: 0, # クレジットカード
    transfer: 1 # 銀行振込
  }

  enum status: {
    payment_waiting: 0, # 入金待ち
    payment_confirmation: 1, # 入金確認
    in_production: 2, # 製作中
    preparing_delivery: 3, # 発送準備中
    delivered: 4 # 発送済み
  }

  has_many :order_details, dependent: :destroy
  belongs_to :customer
  has_many :items, through: :order_details

  def subtotal
    Item.with_tax_price * amount
  end

end
