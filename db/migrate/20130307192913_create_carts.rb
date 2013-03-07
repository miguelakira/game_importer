class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.decimal :price, :precision => 8, :scale => 2
      t.decimal :shipping, :precision => 8, :scale => 2
      t.decimal :discount, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
