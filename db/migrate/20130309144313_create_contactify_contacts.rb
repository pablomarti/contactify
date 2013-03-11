class CreateContactifyContacts < ActiveRecord::Migration
  def change
    create_table :contactify_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
