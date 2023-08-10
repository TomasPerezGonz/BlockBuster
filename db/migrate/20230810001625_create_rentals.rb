class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.boolean :returned

      t.timestamps
    end
  end
end
