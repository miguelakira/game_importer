class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, :precision => 8, :scale => 2
      t.string :description
      t.integer :discount
      t.integer :quantity
      t.integer :console_id

      t.timestamps
    end
  end
end
