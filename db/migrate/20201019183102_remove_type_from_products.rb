class RemoveTypeFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :type, :string
  end
end
