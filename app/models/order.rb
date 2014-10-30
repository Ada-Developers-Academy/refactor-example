class Order < ActiveRecord::Base
  has_many :order_items

  def self.all_by_date
    all.sort_by {|o| o.created_at }.reverse
  end
end
