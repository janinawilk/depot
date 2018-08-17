class Product < ApplicationRecord
  validates :title, :description, presence: true
  validates :title, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
# ​  validates ​:image_url​, allow_blank: true, ​format:
#     { with: /​​\w+\.(gif|jpg|png)\z/i,
#       message: 'Image must have GIF, JPG, or PNG extension'
#     }
end
