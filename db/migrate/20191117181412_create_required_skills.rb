class CreateRequiredSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :required_skills do |t|
      t.string :status
      t.string :name
      t.references :job, null: false, foreign_key: true
      t.string :description
      t.string :reason

      t.timestamps
    end
  end
end
