class CreateAssignedEquipments < ActiveRecord::Migration[6.0]
  def change
    create_table :assigned_equipments do |t|
      t.references :employee, null: false, foreign_key: true
      t.integer :amount
      t.string :equipment_item
      t.string :status
      t.string :equipment_type
      t.date :given_date
      t.date :return_date
      t.string :description

      t.timestamps
    end
  end
end
