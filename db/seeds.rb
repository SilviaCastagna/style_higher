require "open-uri"

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

# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# user = User.new(title: 'NES', body: "A great console")
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# to be used for user photos

# items = [
item_new = Item.create!(title: "Nice shoe", description: "Never used at all, check more", brand: "Cool", user: user_new, price: 350)
Item.create!(title: "Cool Sun Glass", description: "Brand create, we need 20 chars for description", brand: "Nice", user: user_new, price: 420)
Item.create!(title: "Old jacket", description: "Vintage, why somebody set the description as text?", brand: "Ok", user: user_new, price: 69 )
Item.create!(title: "Used undies", description: "Smell fine, not like your old socks under the bed", brand: "Chanely", user: user_new, price: 320)
Item.create!(title: "Smelly shirt", description: "Never washed, who has time to wash tshir in 2021? not me", brand: "Buma", user: user_new, price: 42)
Item.create!(title: "Christmas Socks", description: "Great wollen christmas socks, super comfortable and keep you nice and warm", brand: "Santa's socks", user: user_new, price: 30)
Item.create!(title: "Hertha Berlin Shirt", description: "This is a official signed hertha shirt with the entire team having signed it", brand: "Nike", user: user_new, price: 35)
Item.create!(title: "grass skirt", description: "grass skirt made out of native plants to the pacific", brand: "Homemade", user: user_new, price: 30)
Item.create!(title: "Overalls", description: "Used overalls, lots of paint marks, good if you need to do some work around the house", brand: "Levis", user: user_new, price: 350)
# ]



# [shoes, sun_glasses, jacket, undies, tshirt].each do |attributes|
#   Item = Item.create!(attributes)
#   puts "Created #{Item.title}"
# end
puts "Finished!"
