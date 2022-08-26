# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

# Product.destroy_all
# User.destroy_all

user1 = User.create!(
  email: "aurelio@test.com",
  password: "123123",
  first_name: "Aurelio",
  last_name: "Melo",
  address: "Rua Pedro Victor"
)

user2 = User.create!(
  email: "mauricio@test.com",
  password: "123123",
  first_name: "Mauricio",
  last_name: "Poças",
  address: "Rua Jericó, 193"
)

puts 'Creating stickers...'

photo = URI.open('https://res.cloudinary.com/ddhsxw0fn/image/upload/v1661369312/samples/Vini%CC%81cius_Jr_1_rbdudy.jpg')
product = Product.new(
  category: 'Teams',
  title: 'Vinícius Jr',
  sticker: 'BRA20',
  user: user1
)
product.photo.attach(io: photo, filename: 'product.png', content_type: 'image/png')
product.save
puts product

photo = URI.open('https://res.cloudinary.com/ddhsxw0fn/image/upload/v1661369312/samples/Vini%CC%81cius_Jr_1_rbdudy.jpg')
product = Product.new(
  category: 'Teams',
  title: 'Neymar',
  sticker: 'BRA17',
  user: user2
)
product.photo.attach(io: photo, filename: 'product.png', content_type: 'image/png')
product.save
puts product

photo = URI.open('https://res.cloudinary.com/ddhsxw0fn/image/upload/v1661369312/samples/time_Franc%CC%A7a_1_qk1twc.jpg')
product = Product.new(
  category: 'Teams',
  title: 'France',
  sticker: 'FRA01',
  user: user1
)
product.photo.attach(io: photo, filename: 'product.png', content_type: 'image/png')
product.save
puts product

photo = URI.open('https://res.cloudinary.com/ddhsxw0fn/image/upload/v1661369310/samples/mbappe%CC%81_1_zojwfx.jpg')
product = Product.new(
  category: 'Teams',
  title: 'Kylian Mbappé',
  sticker: 'FRA19',
  user: user2
)
product.photo.attach(io: photo, filename: 'product.png', content_type: 'image/png')
product.save
puts product

photo = URI.open('https://res.cloudinary.com/ddhsxw0fn/image/upload/v1661369311/samples/me%CC%81xico_fifa_word_cup_1_vimbhq.jpg')
product = Product.new(
  category: 'Teams',
  title: 'México',
  sticker: 'MEX01',
  user: user1
)
product.photo.attach(io: photo, filename: 'product.png', content_type: 'image/png')
product.save
puts product

photo = URI.open('https://res.cloudinary.com/ddhsxw0fn/image/upload/v1661369310/samples/Polska_Fifa_Word_cup_1_yhxw2f.jpg')
product = Product.new(
  category: 'Teams',
  title: 'Polonia',
  sticker: 'POL01',
  user: user2
)
product.photo.attach(io: photo, filename: 'product.png', content_type: 'image/png')
product.save
puts product

photo = URI.open('https://res.cloudinary.com/ddhsxw0fn/image/upload/v1661369310/samples/Lucas_paqueta_1_dhw6ht.jpg')
product = Product.new(
  category: 'Teams',
  title: 'Lucas Paquetá',
  sticker: 'BRA19',
  user: user1
)
product.photo.attach(io: photo, filename: 'product.png', content_type: 'image/png')
product.save
puts product

photo = URI.open('https://res.cloudinary.com/ddhsxw0fn/image/upload/v1661369310/samples/al__rihla_oqhylz.jpg')
product = Product.new(
  category: 'Fifa',
  title: 'Al Rihla',
  sticker: 'FWC02',
  user: user2
)
product.photo.attach(io: photo, filename: 'product.png', content_type: 'image/png')
product.save
puts product

photo = URI.open('https://res.cloudinary.com/ddhsxw0fn/image/upload/v1661369310/samples/marcos_reus_1_ycqynl.jpg')
product = Product.new(
  category: 'Teams',
  title: 'Marcos Reus',
  sticker: 'GER18',
  user: user1
)
product.photo.attach(io: photo, filename: 'product.png', content_type: 'image/png')
product.save
puts product

photo = URI.open('https://res.cloudinary.com/ddhsxw0fn/image/upload/v1661369310/samples/lusail__stadium_1_vqfeb8.jpg')
product = Product.new(
  category: 'Fifa',
  title: 'Lusail Stadium',
  sticker: 'FWC03',
  user: user2
)
product.photo.attach(io: photo, filename: 'product.png', content_type: 'image/png')
product.save
puts product

photo = URI.open('https://res.cloudinary.com/ddhsxw0fn/image/upload/v1661369309/samples/Lionel_Messi_1_gaujrt.jpg')
product = Product.new(
  category: 'Teams',
  title: 'Lionel Messi',
  sticker: 'ARG18',
  user: user1
)
product.photo.attach(io: photo, filename: 'product.png', content_type: 'image/png')
product.save
puts product

photo = URI.open('https://res.cloudinary.com/ddhsxw0fn/image/upload/v1661369308/samples/Cristiano_Ronaldo_1_ebw06d.jpg')
product = Product.new(
  category: 'Teams',
  title: 'Cristiano Ronaldo',
  sticker: 'POR19',
  user: user2
)
product.photo.attach(io: photo, filename: 'product.png', content_type: 'image/png')
product.save
puts product

puts 'Finished!'
