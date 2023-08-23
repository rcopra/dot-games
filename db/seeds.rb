puts "Cleaning up database..."
Booking.destroy_all
Game.destroy_all
User.destroy_all
puts "Database cleaned"

User.create( email: "lister@example.com", password: "123456")
User.create( email: "renter@example.com", password: "123456")

games = [
  { name: "The Adventure Quest", description: "Embark on an epic journey to save the kingdom.", price: 29.99, user_id: User.first.id, address: "Alexanderplatz 1, Berlin" },
  { name: "Space Explorers", description: "Explore the vast cosmos and discover new worlds.", price: 19.99, user_id: User.first.id, address: "Brandenburger Tor, Berlin" },
  { name: "Fantasy Realms", description: "Build your own fantasy realm and wage epic battles.", price: 39.99, user_id: User.first.id, address: "Checkpoint Charlie, Berlin" },
  { name: "Mystic Runes", description: "Uncover the secrets of ancient runes in this mystical adventure.", price: 24.99, user_id: User.first.id, address: "Potsdamer Platz 20, Berlin" },
  { name: "Cyberpunk Revolution", description: "Navigate a dystopian future in this action-packed cyberpunk game.", price: 24.99, user_id: User.first.id, address: "Kurfürstendamm 50, Berlin" },
  { name: "Pirate's Cove", description: "Sail the high seas, plunder treasure, and become a legendary pirate.", price: 34.99, user_id: User.first.id, address: "Friedrichstraße 12, Berlin" },
  { name: "Time Traveler's Odyssey", description: "Embark on a time-traveling adventure through history.", price: 29.99, user_id: User.first.id, address: "Gendarmenmarkt 30, Berlin" },
  { name: "Kingdom Builder", description: "Construct and rule your own kingdom in this strategic game.", price: 39.99, user_id: User.first.id, address: "Fanningerstrasse 44, Berlin" },
  { name: "Racing Rivals", description: "Compete against rivals in high-speed races across various tracks.", price: 19.99, user_id: User.first.id, address: "Tiergarten 10, Berlin" },
  { name: "Underwater Odyssey", description: "Dive into the depths and explore the wonders of the ocean.", price: 27.99, user_id: User.first.id, address: "East Side Gallery, Berlin" }
]

games.each { |game| Game.create!(game) }
puts "Seeds planted 🌱"
