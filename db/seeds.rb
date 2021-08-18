# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: 'Star Wars' }, { title: 'Lord of the Rings' }])
#   Character.create(title: 'Luke', movie: movies.first)

puts "Cleaning database..."
Item.destroy_all
User.destroy_all

puts "Creating items..."

user_new = User.create!(email:"wht@yaho.com", password: "123456")

# items = [
item_new = Item.create!(title: "Nice shoe", description: "Never used at all, check more", brand: "Cool", user: user_new)
Item.create!(title: "Cool Sun Glass", description: "Brand create, we need 20 chars for description", brand: "Nice", user: user_new)
Item.create!(title: "Old jacket", description: "Vintage, why somebody set the description as text?", brand: "Ok", user: user_new )
Item.create!(title: "Used undies", description: "Smell fine, not like your old socks under the bed", brand: "Chanely", user: user_new)
Item.create!(title: "Smelly shirt", description: "Never washed, who has time to wash tshir in 2021? not me", brand: "Buma", user: user_new)
# ]

item_photos_new = Item_photos.create!(image_url:"https://source.unsplash.com/random" item = item_new)


# [shoes, sun_glasses, jacket, undies, tshirt].each do |attributes|
#   Item = Item.create!(attributes)
#   puts "Created #{Item.title}"
# end
puts "Finished!"
