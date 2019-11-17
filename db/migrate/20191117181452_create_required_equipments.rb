class CreateRequiredEquipments < ActiveRecord::Migration[6.0]
  def change
    create_table :required_equipments do |t|
      t.references :job, null: false, foreign_key: true
      t.string :quantity
      t.string :equipment_item
      t.string :description

      t.timestamps
    end
  end
end
