class AddPriceToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :price, :float
  end
end
