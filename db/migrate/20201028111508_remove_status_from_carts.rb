class RemoveStatusFromCarts < ActiveRecord::Migration[6.0]
  def change
    remove_column :carts, :status
  end
end
