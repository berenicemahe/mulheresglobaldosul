require 'faker'

puts "Starting creating products..."

p1 = Product.new(name: 'T-shirt', price: 50,
  color: "verde", size: 'G', gender: 'Masculino', type: 'blusas e camisetas', description: 'Green t-shirt with flowers')
p1.save!

p2 = Product.new(name: 'skirt', price: 30,
  color: "cinza", size: 'M', gender: 'Feminino', type: 'saias', description: 'Gray long skirt')
p2.save!

p3 = Product.new(name: 'dress', price: 100,
color: "vermelho", size: 'P', gender: 'Feminino', type: 'vestidos e macacões', description: 'Summer dress')
p3.save!

puts 'Products were created'










# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
