puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "Miami", phone_number: "0559622358", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "Manchester", phone_number: "0559622858", category: "italian" }
bistro =  { name: "bistro", address: "Madrid", phone_number: "0559624358", category: "french" }
entrecote =  { name: "entrecote", address: "London", phone_number: "0559722358", category: "japanese" }
axoa =  { name: "axoa", address: "Paris", phone_number: "0549622358", category: "french" }

[ dishoom, pizza_east, bistro, entrecote, axoa ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
