class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :title
      t.string :name
      t.integer :experience
      t.string :status
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
