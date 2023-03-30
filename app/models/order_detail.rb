class OrderDetail < ApplicationRecord
  enum making_status: {start_not_possible: 0, production_pending: 1, in_production: 2, production_complete: 3 }
# start_not_possible=着手不可、production_pending=制作待ち、in_production=製作中、production_complete=製作完了

  belongs_to :order
  belongs_to :item

  def add_tax_price
    (self.item.price * 1.1).floor
  end

end
