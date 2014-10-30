class Order < ActiveRecord::Base
  has_many :order_items

  def total
    sum = 0
    order_items.all.each do |item|
      sum += item.total
    end
    sum
  end

  def self.all_by_date
    all.sort_by {|o| o.created_at }.reverse
  end
end
