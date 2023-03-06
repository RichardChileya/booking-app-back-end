class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :image
      t.string :model
      t.decimal :daily_price
      t.text :description
      t.boolean :available, default: true
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
