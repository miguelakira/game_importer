class AddSalesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :sales, :integer
  end
end
