class AddCostToGame < ActiveRecord::Migration
  def change
    add_column :products, :cost, :decimal, :precision => 8, :scale => 2
  end
end
