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

user_new = User.create!(email: "doug@doug.com", password: "123456")

# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# user = User.new(title: 'NES', body: "A great console")
# user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
# to be used for user photos

# file = URI.open('')
# item.photo.attach(io: file, filename: '.jpg', content_type: 'image/jpg')

# items = [

file = URI.open('https://www.julienslive.com/images/lot/1537/153723_0.jpg?1441968327')
item = Item.create!(title: "Blue Suede Shoes", description: "Superbrand collab from 2011, never worn, limited run of 3000 worldwide.", brand: "Levis x Nike", user: user_new, price: 99)
item.photo.attach(io: file, filename: 'shoe.jpg', content_type: 'image/jpg')

file = URI.open('https://cdn11.bigcommerce.com/s-lqiq2tqil5/product_images/uploaded_images/5417-check-shirt-red-black-thumb1.jpg')
item = Item.create!(title: "Lashley Shirt", description: "Well worn but still in great condition. Merino wool for mountainous excursions.", brand: "Carhartt WIP", user: user_new, price: 42)
item.photo.attach(io: file, filename: 'shirt.jpg', content_type: 'image/jpg')

file = URI.open('http://westwillow.ca/wp-content/uploads/2015/06/DSC_0012-600x600.jpg')
item = Item.create!(title: "Balenciaga Grass Skirt", description: "Eco-conscious, sustainably sourced grass pleat skirt from Barcelona", brand: "Homemade", user: user_new, price: 30)
item.photo.attach(io: file, filename: 'grass_skirt.jpg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80')
item = Item.create!(title: "Wayfarer Sunglasses  ", description: "Brushed steel frame with dual tint lens, minor signs of wear. Still sexy.", brand: "Oliver Spencer", user: user_new, price: 29)
item.photo.attach(io: file, filename: 'glasses.jpg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1591047139829-d91aecb6caea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1276&q=80')
item = Item.create!(title: "Brown Bomber Jacket", description: "Warm winter jacket purchased in 1969 from a street vendor in Ulm.", brand: "Unknown", user: user_new, price: 69 )
item.photo.attach(io: file, filename: 'jacket.jpg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1564379976409-79bd0786fff1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80')
item = Item.create!(title: "Silk Socks", description: "Hand woven 3/4' length boating socks. Worn on cruises across the Atlantic", brand: "Burlington King", user: user_new, price: 320)
item.photo.attach(io: file, filename: 'socks.jpg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1582966772680-860e372bb558?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=882&q=80')
# item = Item.create!(title: "Christmas Socks", description: "Great wollen christmas socks, super comfortable and keep you nice and warm", brand: "Santa's socks", user: user_new, price: 30)
# item.photo.attach(io: file, filename: 'christmas_socks.jpg', content_type: 'image/jpg')

file = URI.open('https://os1.meinecloud.io/b10088/media/image/0d/f4/e9/210500-1-neu_600x600@2x.png')
item = Item.create!(title: "Hertha Berlin Shirt", description: "This is a official signed hertha shirt with the entire team having signed it", brand: "Nike", user: user_new, price: 35)
item.photo.attach(io: file, filename: 'hertha.png', content_type: 'image/png')

file = URI.open('https://americanhistory.si.edu/sites/default/files/styles/blog_image/public/Baca_overalls.jpg')
item = Item.create!(title: "Stylish Paint Overalls", description: "Used overalls, lots of paint marks, good if you need to do some work around the house", brand: "Levis", user: user_new, price: 350)
item.photo.attach(io: file, filename: 'overalls.jpg', content_type: 'image/jpg')






# [shoes, sun_glasses, jacket, undies, tshirt].each do |attributes|
#   Item = Item.create!(attributes)
#   puts "Created #{Item.title}"
# end
puts "Finished!"
