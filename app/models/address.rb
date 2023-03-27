class Address < ApplicationRecord
  belongs_to :customer

  def delivery
    "〒" + self.postal_code + " " + self.address + " " + self.name
  end

end
