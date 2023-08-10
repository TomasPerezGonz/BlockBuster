# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Crear 20 clientes
20.times do
    Customer.create(name: Faker::Name.name)
  end

puts "Creando 20 clientes"
  
  # Crear 100 películas
  100.times do
    Movie.create(name: Faker::Movie.title, description: Faker::Movie.quote, customer_id: Customer.order(Arel.sql('RANDOM()')).first.id)
  end

puts "Creando 100 peliculas"