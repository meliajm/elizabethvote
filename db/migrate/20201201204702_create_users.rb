class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phonenumber
      t.boolean :receivesNotification
      t.string :address1
      t.string :address2
      t.string :city
      t.integer :zip
      t.string :state
      t.text :message
      t.boolean :canVolunteer

      t.timestamps
    end
  end
end
