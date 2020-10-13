class DropContacts < ActiveRecord::Migration[6.0]
  def change
    drop_table :contacts_mailers
  end
end
