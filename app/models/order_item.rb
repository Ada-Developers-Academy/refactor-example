class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  def total
    quantity * product.price
  end

  def self.total
    sum = 0
    self.all.each do |item|
      sum += item.total
    end
    sum
  end
end
