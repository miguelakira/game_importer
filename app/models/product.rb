class Product < ActiveRecord::Base
  attr_accessible :console_id, :description, :discount, :name, :price, :quantity, :cost, :sales, :image_url
  has_paper_trail
  belongs_to :console

  before_save :cheaper_looking_prices

  # if price is, for example, 150.00, then it will be saved as 149.00
  def cheaper_looking_prices
    if self.price % 10 == 0
      self.price -= 1
    end
  end
end
