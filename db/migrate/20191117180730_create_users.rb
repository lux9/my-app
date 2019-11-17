class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.integer :dni
      t.string :nationality
      t.string :role
      t.string :status
      t.string :confirmation_key

      t.timestamps
    end
  end
end
