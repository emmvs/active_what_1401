# This is where you can create initial data for your app.
# db/seeds.rb
require "faker"
require "json"

# Clearing old data
User.destroy_all
Pokemon.destroy_all
puts "Databse is clean 🧼"

# Creating new users
users_data = [
  { username: "AmjadAlHajjaj", email: "amjad.alhajjaj@lewagon.com" },
  { username: "JamieBorg", email: "jamie.borg@lewagon.com" },
  { username: "RebeccaBrislow", email: "rebecca.brislow@lewagon.com" },
  { username: "HamidrezaDezhagah", email: "hamidreza.dezhagah@lewagon.com" },
  { username: "RebecaFernandez", email: "rebeca.fernandez@lewagon.com" },
  { username: "AntonioFigueira", email: "antonio.figueira@lewagon.com" },
  { username: "AlbertoGarciaLara", email: "alberto.garcialara@lewagon.com" },
  { username: "IratxeGarrido", email: "iratxe.garrido@lewagon.com" },
  { username: "ShubhamGautam", email: "shubham.gautam@lewagon.com" },
  { username: "LouiseGiraud", email: "louise.giraud@lewagon.com" },
  { username: "MaksymHabidulin", email: "maksym.habidulin@lewagon.com" },
  { username: "MohammadHakimi", email: "mohammad.hakimi@lewagon.com" },
  { username: "MariusHockel", email: "marius.hockel@lewagon.com" },
  { username: "AlexandraHolz", email: "alexandra.holz@lewagon.com" },
  { username: "GiuliaLaureti", email: "giulia.laureti@lewagon.com" },
  { username: "KillianLeDoucen", email: "killian.ledoucen@lewagon.com" },
  { username: "BernardoLisi", email: "bernardo.lisi@lewagon.com" },
  { username: "ZoeMawbySmart", email: "zoe.mawbysmart@lewagon.com" },
  { username: "GiorgioMazzuca", email: "giorgio.mazzuca@lewagon.com" },
  { username: "EmmaPreysing", email: "emma.preysing@lewagon.com" },
  { username: "FranzSchurmann", email: "franz.schurmann@lewagon.com" },
  { username: "LuisaStaiger", email: "luisa.staiger@lewagon.com" },
  { username: "PascalStodieck", email: "pascal.stodieck@lewagon.com" },
  { username: "AnnaSubotenko", email: "anna.subotenko@lewagon.com" },
  { username: "KatSyddall", email: "kat.syddall@lewagon.com" },
]

users_data.each do |user_data|
  User.create!(
    username: user_data[:username],
    email: user_data[:email]
  )
end

# Creating new pokemons
40.times do
  Pokemon.create(name: Faker::Games::Pokemon.name, location: Faker::Games::Pokemon.location, move: Faker::Games::Pokemon.move)
end

puts "Seeds completed! Created #{User.count} students & #{Pokemon.count} Pokemons 🐝"
