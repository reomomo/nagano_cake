class OrderDetail < ApplicationRecord
  enum status:{production_not_possible:0,production_pending:1,in_production:2,production_complete:3}
# production_not_possible=製作不可、production_pending=制作待ち、in_production=製作中、production_complete=製作完了

belongs_to :order
belongs_to :item

end
