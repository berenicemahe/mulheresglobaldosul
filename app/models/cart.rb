class Cart < ApplicationRecord
  belongs_to :user
  has_many: products, through: product_cart
end
