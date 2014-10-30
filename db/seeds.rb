# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
  Product.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price * 100)
end

100.times do
  order = Order.create
  (rand(5) + 1).times do
    order.order_items.create(quantity: (rand(3) + 1), product_id: Product.all.sample.id )
  end
end
