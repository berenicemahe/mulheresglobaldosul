require 'faker'

# puts "Starting creating products..."

# p1 = Product.new(name: 'T-shirt', price: 50,
#   color: "verde", size: 'G', gender: 'Masculino', type: 'blusas e camisetas', description: 'Green t-shirt with flowers')
# p1.save!

# p2 = Product.new(name: 'skirt', price: 30,
#   color: "cinza", size: 'M', gender: 'Feminino', type: 'saias', description: 'Gray long skirt')
# p2.save!

# p3 = Product.new(name: 'dress', price: 100,
# color: "vermelho", size: 'P', gender: 'Feminino', type: 'vestidos e macacões', description: 'Summer dress')
# p3.save!

# puts 'Products were created'

dressone = Product.create(name: "Pink dress", description: "A flowery pink dress, perfect for the summer coming", gender: "femino",
                        size: "M", category: "vestidos e macacões", color: "rosa", price: 60)
# url = 'https://images.unsplash.com/photo-1482270406631-a02c51d93c2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=962&q=80'
# filename = File.basename(URI.parse(url).path)
# file = URI.open(url)
# dressone.photo.attach(io: file, filename: filename)
# dressone.save!

dresstwo = Product.create(name: "Yellow dress", description: "A flowery yellow dress, perfect for the summer coming", gender: "femino",
                        size: "M", category: "vestidos e macacões", color: "amarelo", price: 60)
# url = 'https://images.unsplash.com/photo-1584898663362-e4cc56fd3c37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
# filename = File.basename(URI.parse(url).path)
# file = URI.open(url)
# dresstwo.photo.attach(io: file, filename: filename)
# dresstwo.save!





# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

biancaferreira = User.create(email: "biancaferreiralp@gmail.com", password: "123456")

joaofelipe = User.create(email: "joaofelipemendes@gmail.com", password: "helloworld")

berenicemahe = User.create(email: "berenice.mahe@gmail.com", password: "bonjour")
