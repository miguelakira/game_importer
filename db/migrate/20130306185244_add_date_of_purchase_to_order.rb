class AddDateOfPurchaseToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :date_of_purchase, :datetime
  end
end
