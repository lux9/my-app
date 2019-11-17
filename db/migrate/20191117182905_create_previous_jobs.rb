class CreatePreviousJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :previous_jobs do |t|
      t.references :employee, null: false, foreign_key: true
      t.integer :reference_phone
      t.string :company
      t.string :role
      t.string :reference_contact
      t.date :start_date
      t.date :end_date
      t.string :reason

      t.timestamps
    end
  end
end
