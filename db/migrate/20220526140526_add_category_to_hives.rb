class AddCategoryToHives < ActiveRecord::Migration[6.1]
  def change
    add_column :hives, :category, :string
  end
end
