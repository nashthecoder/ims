class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :city
      t.string :role
      t.string :department
      t.text :notes

      t.timestamps
    end
  end
end
