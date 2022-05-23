class CreateHives < ActiveRecord::Migration[6.1]
  def change
    create_table :hives do |t|
      t.references :queen, null: false, foreign_key: {to_table: :users}
      t.float :price_per_day
      t.string :name
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end
