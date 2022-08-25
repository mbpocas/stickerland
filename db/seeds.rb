# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.destroy_all
user = User.create!(
  email: "emailtest@test.com",
  password: "123123",
  first_name: "Aurelio",
  last_name: "Melo",
  address: "Rua Pedro Victor"
)
puts 'Creating stickers...'

# Product.create!(
#   category: 'Fifa',
#   title: 'Official Trophy',
#   sticker: 'FWC2',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Fifa',
#   title: 'Official Emblem',
#   sticker: 'FWC6',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Stadiums',
#   title: 'Lusail Stadium outdoor',
#   sticker: 'FWC16',
#   url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Bra-Cos_%281%29_%28cropped%29.jpg/640px-Bra-Cos_%281%29_%28cropped%29.jpg',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Vinícius_Jr',
#   sticker: 'BRA1',
#   url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Bra-Cos_%281%29_%28cropped%29.jpg/640px-Bra-Cos_%281%29_%28cropped%29.jpg',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Team Logo',
#   sticker: 'BRA2',
#   url: '',
#   user_id: 1
# )


# Product.create!(
#   category: 'Teams',
#   title: 'Alisson',
#   sticker: 'BRA3',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Ederson',
#   sticker: 'BRA4',
#   url: '',
#   user_id: 1
# )


# Product.create!(
#   category: 'Teams',
#   title: 'Alex Sandro',
#   sticker: 'BRA5',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Danilo',
#   sticker: 'BRA6',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Eder Militão',
#   sticker: 'BRA7',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Marquinhos',
#   sticker: 'BRA8',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Thiago Silva',
#   sticker: 'BRA9',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Casemiro',
#   sticker: 'BRA10',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Philippe Coutinho',
#   sticker: 'BRA11',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Fabinho',
#   sticker: 'BRA12',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Fred',
#   sticker: 'BRA13',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Lucas Paquetá',
#   sticker: 'BRA14',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Antony',
#   sticker: 'BRA15',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Gabriel Jesus',
#   sticker: 'BRA16',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Neymar Jr',
#   sticker: 'BRA17',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Raphinha',
#   sticker: 'BRA18',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Richarlison',
#   sticker: 'BRA19',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Vinícius Jr',
#   sticker: 'BRA20',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Cristiano Ronaldo',
#   sticker: 'POR18',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Lionel Messi',
#   sticker: 'ARG20',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Robert Lewandowski',
#   sticker: 'POL17',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Team Logo',
#   sticker: 'FRA2',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Kylian Mbappé',
#   sticker: 'FRA19',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Karim Benzema',
#   sticker: 'FRA16',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Fifa',
#   title: 'Al Rihla',
#   sticker: 'FWC18',
#   url: '',
#   user_id: 1
# )

# Product.create!(
#   category: 'Teams',
#   title: 'Team Logo',
#   sticker: 'NED2',
#   url: '',
#   user_id: 1
# )
now = Time.now.to_s
Dir["IMG STICKERS/**/*"].each do |n|
  response = Cloudinary::Uploader.upload(n, :folder => now)
  Product.create!(
    category: 'Teams',
    title: response["original_filename"].gsub(/_/, " "),
    sticker: 'NED2',
    url: response["url"],
    user_id: 1
  )
end

puts 'Finished!'
