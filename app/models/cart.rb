class Cart < ActiveRecord::Base
  attr_accessible :discount, :price, :shipping, :user_id
end
