# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Product.destroy_all
User.destroy_all

user1 = User.create!(
  email: "emailtest@test.com",
  password: "123123",
  first_name: "Aurelio",
  last_name: "Melo",
  address: "Rua Pedro Victor"
)

puts 'Creating stickers...'

10.times do
  photo = URI.open('https://panini.com.br/media/catalog/product/0/0/004286abr.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=897&width=960&canvas=960:897')
  product = Product.new(
    category: 'Fifa',
    title: 'Official Emblem',
    sticker: 'FWC6',
    user: user1
  )
  product.photo.attach(io: photo, filename: 'product.png', content_type: 'image/png')
  product.save
  puts product
end

puts 'Finished!'
