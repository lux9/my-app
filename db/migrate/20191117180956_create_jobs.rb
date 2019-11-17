class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :role
      t.references :employee, null: false, foreign_key: true
      t.references :office, null: false, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
