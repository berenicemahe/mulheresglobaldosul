class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :type
      t.integer :price
      t.string :color
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
