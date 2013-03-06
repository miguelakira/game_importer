class AddToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :sent, :boolean
    add_column :orders, :completed, :boolean
    add_column :orders, :arrival, :datetime
    add_column :orders, :taxed, :boolean
    add_column :orders, :price, :decimal, :precision => 8, :scale => 2
    add_column :orders, :taxes, :decimal, :precision => 8, :scale => 2
  end

end
