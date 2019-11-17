class CreateEmployeeSalaries < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_salaries do |t|
      t.integer :amount
      t.references :employee, null: false, foreign_key: true
      t.string :status
      t.string :final_amount
      t.string :month
      t.string :payment_date

      t.timestamps
    end
  end
end
