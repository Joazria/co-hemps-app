class CreateCohemps < ActiveRecord::Migration[6.0]
  def change
    create_table :cohemps do |t|
      t.references :user, null: false, foreign_key: true
      t.string :adress
      t.boolean :availability
      t.text :description

      t.timestamps
    end
  end
end
