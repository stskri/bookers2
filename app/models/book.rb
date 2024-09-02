class Book < ApplicationRecord
  belongs_to :user
  
  has_one_attached :image
  
  def get_image
    file_path = Rails.root.join('app/assets/images/default-image(80x80).jpg')
    image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  end
  
end
