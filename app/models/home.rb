class Home < ApplicationRecord
  has_one_attached :profile_image

  # def top
  #   @items = Item.all.order(created_at: :desc)
  # end

  def get_image(width, height)
  　 unless image.attached?
  　　file_path = Rails.root.join('app/assets/images/wakubatsu.jpg')
  　　image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  　end
  　image.variant(resize_to_limit: [width, height]).processed
  end
end