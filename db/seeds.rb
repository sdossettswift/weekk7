500.times do
  Order.create!  product_name: Faker::Company.catch_phrase,
                amount_in_cents:(500..50000).to_a.sample,
                order_date: (1..1500).to_a.sample.days.ago
end
