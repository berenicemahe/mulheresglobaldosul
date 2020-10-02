class CreateProductCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :product_carts do |t|
      t.references :product, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
