class Product < ApplicationRecord
  belongs_to :cart, through: :product_cart

  TYPE = ["accessórios", "bermudas e shorts", "blusas e camisetas", "blusões e suéteres",
    "bolsas", "calças", "camisas", "casacos e jaquetas", "esportivo", "moda praia", "saia", "vestido e macacões"]
  COLOR = ["amarelo", "azul", "bege", "branco", "cinza", "dourado", "laranja", "marrom", "multicores", "preto",
    "rosa", "roxo", "verde", "vermelho"]
  GENDER = ["femino", "masculino"]
  SIZE = ["PP", "P", "M", "G", "GG"]

  validates :name, :gender, :description, :size, :type, :color, :price, presence: true
  validates :type, inclusion: { in: TYPE }
  validates :color, inclusion: { in: COLOR}
  validates :size, inclusion: { in: SIZE }
  validates :gender, inclusion: { in: GENDER }

end
