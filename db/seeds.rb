# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

biancaferreira = User.create(email: "biancaferreiralp@gmail.com", password: "123456", first_name: "Bianca",
             last_name: "Ferreira", address: "Jacarepagua", admin: true)

joaofelipe = User.create(email: "joaofelipemendes@gmail.com", password: "helloworld", first_name: "Joao Felipe",
             last_name: "Mendes", address: "Botafogo")

berenicemahe = User.create(email: "berenice.mahe@gmail.com", password: "bonjour", first_name: "Bérénice",
             last_name: "Mahé", address: "Gloria")
