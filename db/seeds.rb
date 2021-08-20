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

file = URI.open('https://images.unsplash.com/photo-1626947346165-4c2288dadc2a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmljZSUyMHNob2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60')
item = Item.create!(title: "Nice shoe", description: "Never used at all, check more", brand: "Cool", user: user_new, price: 350)
item.photo.attach(io: file, filename: 'shoe.jpg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80')
item = Item.create!(title: "Cool Sun Glass", description: "Brand create, we need 20 chars for description", brand: "Nice", user: user_new, price: 420)
item.photo.attach(io: file, filename: 'glasses.jpg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1591047139829-d91aecb6caea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1276&q=80')
item = Item.create!(title: "Old jacket", description: "Vintage, why somebody set the description as text?", brand: "Ok", user: user_new, price: 69 )
item.photo.attach(io: file, filename: 'jacket.jpg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1564379976409-79bd0786fff1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80')
item = Item.create!(title: "Used socks", description: "Smell fine, not like your old socks under the bed", brand: "Chanely", user: user_new, price: 320)
item.photo.attach(io: file, filename: 'socks.jpg', content_type: 'image/jpg')

file = URI.open('https://cdn11.bigcommerce.com/s-lqiq2tqil5/product_images/uploaded_images/5417-check-shirt-red-black-thumb1.jpg')
item = Item.create!(title: "Smelly shirt", description: "Never washed, who has time to wash tshir in 2021? not me", brand: "Buma", user: user_new, price: 42)
item.photo.attach(io: file, filename: 'shirt.jpg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1582966772680-860e372bb558?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=882&q=80')
item = Item.create!(title: "Christmas Socks", description: "Great wollen christmas socks, super comfortable and keep you nice and warm", brand: "Santa's socks", user: user_new, price: 30)
item.photo.attach(io: file, filename: 'christmas_socks.jpg', content_type: 'image/jpg')

file = URI.open('https://os1.meinecloud.io/b10088/media/image/0d/f4/e9/210500-1-neu_600x600@2x.png')
item = Item.create!(title: "Hertha Berlin Shirt", description: "This is a official signed hertha shirt with the entire team having signed it", brand: "Nike", user: user_new, price: 35)
item.photo.attach(io: file, filename: 'hertha.png', content_type: 'image/png')


file = URI.open('http://westwillow.ca/wp-content/uploads/2015/06/DSC_0012-600x600.jpg')
item = Item.create!(title: "grass skirt", description: "grass skirt made out of native plants to the pacific", brand: "Homemade", user: user_new, price: 30)
item.photo.attach(io: file, filename: 'grass_skirt.jpg', content_type: 'image/jpg')

file = URI.open('https://americanhistory.si.edu/sites/default/files/styles/blog_image/public/Baca_overalls.jpg')
item = Item.create!(title: "Overalls", description: "Used overalls, lots of paint marks, good if you need to do some work around the house", brand: "Levis", user: user_new, price: 350)
item.photo.attach(io: file, filename: 'overalls.jpg', content_type: 'image/jpg')






# [shoes, sun_glasses, jacket, undies, tshirt].each do |attributes|
#   Item = Item.create!(attributes)
#   puts "Created #{Item.title}"
# end
puts "Finished!"
