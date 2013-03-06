class Order < ActiveRecord::Base
  attr_accessible :user_id, :date_of_purchase, :completed, :arrival, :taxed, :price, :taxes, :sent

  belongs_to :user
end
