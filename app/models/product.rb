class Product < ActiveRecord::Base
  attr_accessible :console_id, :description, :discount, :name, :price, :quantity, :cost, :sales, :image_url
  has_paper_trail
  belongs_to :console
  has_many :line_items

  before_save :cheaper_looking_prices
  before_destroy :ensure_not_referenced_by_any_line_item

  # if price is, for example, 150.00, then it will be saved as 149.00
  def cheaper_looking_prices
    if self.price % 10 == 0
      self.price -= 1
    end
  end

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end
end
