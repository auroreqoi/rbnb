class AddCoordinatesToHives < ActiveRecord::Migration[6.1]
  def change
    add_column :hives, :latitude, :float
    add_column :hives, :longitude, :float
  end
end
