class AddStatusToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :status, :boolean, :default => :false
  end
end
