class Product < ApplicationRecord

  has_one_attached :photo

  CATEGORY = ["accessórios", "bermudas e shorts", "blusas e camisetas", "blusões e suéteres",
    "bolsas", "calças", "camisas", "casacos e jaquetas", "esportivo", "moda praia", "saias", "vestidos e macacões"]
  COLOR = ["amarelo", "azul", "bege", "branco", "cinza", "dourado", "laranja", "marrom", "multicores", "preto",
    "rosa", "roxo", "verde", "vermelho", "verde"]
  GENDER = ["femino", "masculino"]
  SIZE = ["PP", "P", "M", "G", "GG"]

  validates :name, :gender, :description, :size, :category, :color, :price, presence: true
  validates :category, inclusion: { in: CATEGORY }
  validates :color, inclusion: { in: COLOR}
  validates :size, inclusion: { in: SIZE }
  validates :gender, inclusion: { in: GENDER }

  def is_product_in_cart?(user)
    cart = user.carts.find_by(status: false)

    if cart
      ProductCart.find_by(cart: cart, product: self).present?
    else
      false
    end
  end

  def cart_product(user)
    cart = user.carts.find_by(status: false)

    if cart
      ProductCart.find_by(cart: cart, product: self)
    else
      nil
    end
  end
end
