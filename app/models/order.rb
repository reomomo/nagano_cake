class Order < ApplicationRecord
  enum payment_methods:{credit_card:0,bank_transfer:1}
#credit_card=クレジットカード、bank_transfer＝銀行振込
  enum status:{payment_waiting:0,payment_confirmation:1,in_production:2,preparing_delivery:3,delivered:4}
# payment_waiting=入金待ち、payment_confirmation=入金確認、in_production=製作中、
# preparing_delivery=発送準備中、delivered=発送済み

belongs_to :order_detail


end
