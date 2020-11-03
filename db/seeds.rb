require 'cloudinary'
require 'open-uri'
OpenURI::Buffer.send :remove_const, 'StringMax' if OpenURI::Buffer.const_defined?('StringMax')
OpenURI::Buffer.const_set 'StringMax', 0

puts "Criando produtos..."

dressone = Product.create!(name: "Pink dress", description: "A flowery pink dress, perfect for the summer coming", gender: "femino",
                        size: "M", category: "vestidos e macacões", color: "rosa", price: 60)
url = 'https://res.cloudinary.com/dnd1jn5pp/image/upload/v1603828350/vestido_floral_dcglfr.jpg'
filename = File.basename(URI.parse(url).path)
file = URI.open(url)
dressone.photo.attach(io: file, filename: filename)
dressone.save!

dresstwo = Product.create!(name: "Yellow dress", description: "A flowery yellow dress, perfect for the summer coming", gender: "femino",
                        size: "M", category: "vestidos e macacões", color: "amarelo", price: 60)
url = 'https://res.cloudinary.com/dnd1jn5pp/image/upload/v1603828350/vestido_floral_dcglfr.jpg'
filename = File.basename(URI.parse(url).path)
file = open(url)
dresstwo.photo.attach(io: file, filename: filename)
dresstwo.save!

puts "Produtos criados!"


puts "Criando Usuários..."

biancaferreira = User.create(email: "biancaferreiralp@gmail.com", password: "123456")

joaofelipe = User.create(email: "joaofelipemendes@gmail.com", password: "helloworld")

berenicemahe = User.create(email: "berenice.mahe@gmail.com", password: "bonjour")

renatagrassi =  User.create(email: "renatagrassi@gmail.com", password: "123456")

puts "Usuários criados!"


