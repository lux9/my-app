class CreateBonusPayments < ActiveRecord::Migration[6.0]
  def change
    create_table :bonus_payments do |t|
      t.references :employee_salary, null: false, foreign_key: true
      t.integer :amount
      t.string :reason

      t.timestamps
    end
  end
end
