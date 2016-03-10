class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  attr_accessible :product_id
  def total_price
  	product.price*quantity
  end
end
