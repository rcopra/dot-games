# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning up database..."
Game.destroy_all
User.destroy_all
puts "Database cleaned"

User.create( email: "example@example.com", password: "123456")
games = [
  { name: "The Adventure Quest", description: "Embark on an epic journey to save the kingdom.", price: 29.99, user_id: User.first.id },
  { name: "Space Explorers", description: "Explore the vast cosmos and discover new worlds.", price: 19.99, user_id: User.first.id },
  { name: "Fantasy Realms", description: "Build your own fantasy realm and wage epic battles.", price: 39.99, user_id: User.first.id },
  { name: "Mystic Runes", description: "Uncover the secrets of ancient runes in this mystical adventure.", price: 24.99, user_id: User.first.id },
  { name: "Cyberpunk Revolution", description: "Navigate a dystopian future in this action-packed cyberpunk game.", user_id: User.first.id },
  { name: "Pirate's Cove", description: "Sail the high seas, plunder treasure, and become a legendary pirate.", price: 34.99, user_id: User.first.id },
  { name: "Time Traveler's Odyssey", description: "Embark on a time-traveling adventure through history.", price: 29.99, user_id: User.first.id },
  { name: "Kingdom Builder", description: "Construct and rule your own kingdom in this strategic game.", price: 39.99, user_id: User.first.id },
  { name: "Racing Rivals", description: "Compete against rivals in high-speed races across various tracks.", price: 19.99, user_id: User.first.id },
  { name: "Underwater Odyssey", description: "Dive into the depths and explore the wonders of the ocean.", price: 27.99, user_id: User.first.id },
  { name: "Galactic Conquest", description: "Conquer the galaxy by building an interstellar empire.", price: 44.99, user_id: User.first.id },
  { name: "Sorcerer's Apprentice", description: "Learn the arcane arts and become a powerful sorcerer.", price: 32.99, user_id: User.first.id },
  { name: "Survival Instinct", description: "Test your survival skills in a post-apocalyptic world.", price: 22.99, user_id: User.first.id },
]

games.each { |game| Game.create!(game) }
puts "Seeds planted 🌱"
