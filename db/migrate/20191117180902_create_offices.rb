class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.string :type
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
