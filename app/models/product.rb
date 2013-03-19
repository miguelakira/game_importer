class Product < ActiveRecord::Base
  attr_accessible :console_id, :description, :discount, :name, :price, :quantity, :cost, :sales, :image_url
  has_paper_trail
  belongs_to :console
end
