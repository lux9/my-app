class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.references :job, null: false, foreign_key: true
      t.string :fname
      t.string :lname
      t.string :role
      t.string :nationality
      t.string :marital_status
      t.string :mail
      t.string :status
      t.string :gender
      t.integer :dni
      t.integer :age
      t.string :photo
      t.string :health_insurance
      t.date :start_date
      t.date :birtday
      t.date :end_date
      t.string :transport

      t.timestamps
    end
  end
end
