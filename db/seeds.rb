puts "Cleaning database ..."
Restaurant.destroy_all

puts "Creating restaurants"

5.times do
  restaurant = Restaurant.create!(name: Faker::Restaurant.name,
                                  address: Faker::Address.full_address,
                                  category: Restaurant::LIST.sample)
  puts "#{restaurant.name}"
end

puts "#{Restaurant.count}"
