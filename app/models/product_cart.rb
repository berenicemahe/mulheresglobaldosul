class ProductCart < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  has_many :product, through: :cart
end
