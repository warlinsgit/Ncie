class LineItem < ApplicationRecord
  belongs_to :laptop
  belongs_to :cart

  def total_price
  	laptop.price.to_i * quantity.to_i
  end

end
