class ChangePricePerDayInHives < ActiveRecord::Migration[6.1]
  def change
    change_column :hives, :price_per_day, :integer
  end
end
