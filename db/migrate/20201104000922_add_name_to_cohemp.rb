class AddNameToCohemp < ActiveRecord::Migration[6.0]
  def change
    add_column :cohemps, :name, :string
  end
end
