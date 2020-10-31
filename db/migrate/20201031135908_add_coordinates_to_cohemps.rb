class AddCoordinatesToCohemps < ActiveRecord::Migration[6.0]
  def change
    add_column :cohemps, :latitude, :float
    add_column :cohemps, :longitude, :float
  end
end
