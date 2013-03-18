class Product < ActiveRecord::Base
  attr_accessible :console_id, :description, :discount, :name, :price, :quantity, :cost
  has_paper_trail
  belongs_to :console
end
