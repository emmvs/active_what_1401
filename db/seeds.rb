# This is where you can create initial data for your app.
require "faker"

Pokemon.destroy_all
puts "Database is clean now 🧼"

# CRUD

# Create
# Pokemon.create(name: "Snorlax", level: 30)
30.times do
  Pokemon.create(
    name: Faker::Games::Pokemon.name,
    location: Faker::Games::Pokemon.location,
    attack: Faker::Games::Pokemon.move,
    level: rand(1..100)
  )
end

# Read (all)
Pokemon.all
# Read (one specfic)
Pokemon.find(1)
Pokemon.find_by(name: "Pikachu")

# Update
pokemon = Pokemon.find(1)
pokemon.name = "Pikachu"
# OR
pokemon.update(level: 3)

# Delete
pokemon = Pokemon.find(1)
pokemon.destroy

puts "Database is seeded 🌱🌱🌱 with #{Pokemon.count} pokemons 🐡"
