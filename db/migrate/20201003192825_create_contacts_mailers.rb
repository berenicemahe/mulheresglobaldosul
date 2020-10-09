class CreateContactsMailers < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts_mailers do |t|

      t.timestamps
    end
  end
end
