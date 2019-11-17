class CreateFamilyMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :family_members do |t|
      t.references :employee, null: false, foreign_key: true
      t.string :type
      t.string :fname
      t.string :lname
      t.string :nationality
      t.string :status
      t.string :email
      t.integer :age
      t.integer :dni
      t.string :state

      t.timestamps
    end
  end
end
