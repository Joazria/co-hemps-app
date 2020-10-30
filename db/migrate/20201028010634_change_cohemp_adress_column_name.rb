class ChangeCohempAdressColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :cohemps, :adress, :address
  end
end
