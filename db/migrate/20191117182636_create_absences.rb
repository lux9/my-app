class CreateAbsences < ActiveRecord::Migration[6.0]
  def change
    create_table :absences do |t|
      t.references :employee_salary, null: false, foreign_key: true
      t.string :reason
      t.string :type
      t.date :absence_date

      t.timestamps
    end
  end
end
