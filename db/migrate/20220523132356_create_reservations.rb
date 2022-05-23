class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :hive, null: false, foreign_key: true
      t.float :total_price
      t.string :status, default: "pending"
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
