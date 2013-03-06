class Product < ActiveRecord::Base
  attr_accessible :console_id, :description, :discount, :name, :price, :quantity, :cost

  belongs_to :console

end
