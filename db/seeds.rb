puts "Cleaning up database..."
Booking.destroy_all
Game.destroy_all
User.destroy_all
puts "Database cleaned"

User.create( email: "lister@example.com", password: "123456")
User.create( email: "renter@example.com", password: "123456")

games = [
  {
    name: "Super Mario World",
    description: "Join Mario in his quest to rescue Princess Peach in this classic platformer.",
    release_date: Date.new(1990, 11, 21),
    poster_url: "placeholder",
    price: rand(10.0..50.0).round(2)
  },
  {
    name: "The Legend of Zelda: A Link to the Past",
    description: "Embark on a grand adventure as Link to save Princess Zelda and defeat Ganon.",
    release_date: Date.new(1991, 11, 21),
    poster_url: "placeholder",
    price: rand(10.0..50.0).round(2)
  },
  {
    name: "Sonic the Hedgehog",
    description: "Help Sonic defeat Dr. Robotnik and his evil plans to take over the world.",
    release_date: Date.new(1991, 6, 23),
    poster_url: "placeholder",
    price: rand(10.0..50.0).round(2)
  },
  {
    name: "Street Fighter II",
    description: "Choose your fighter and battle against opponents from around the world.",
    release_date: Date.new(1991, 2, 6),
    poster_url: "placeholder",
    price: rand(10.0..50.0).round(2)
  },
  {
    name: "Donkey Kong Country",
    description: "Join Donkey Kong and Diddy Kong in their quest to reclaim their stolen bananas.",
    release_date: Date.new(1994, 11, 21),
    poster_url: "placeholder",
    price: rand(10.0..50.0).round(2)
  },
  {
    name: "Mortal Kombat",
    description: "Test your might in this brutal fighting game with iconic characters and fatalities.",
    release_date: Date.new(1992, 10, 8),
    poster_url: "placeholder",
    price: rand(10.0..50.0).round(2)
  },
  {
    name: "Final Fantasy VII",
    description: "Embark on a journey with Cloud and his allies to save the planet from the evil Sephiroth.",
    release_date: Date.new(1997, 1, 31),
    poster_url: "placeholder",
    price: rand(10.0..50.0).round(2)
  },
  {
    name: "Pokémon Red and Blue",
    description: "Catch 'em all and become a Pokémon Master in the Kanto region.",
    release_date: Date.new(1996, 2, 27),
    poster_url: "placeholder",
    price: rand(10.0..50.0).round(2)
  },
  {
    name: "Tetris",
    description: "Arrange falling blocks to create lines and clear the screen in this iconic puzzle game.",
    release_date: Date.new(1984, 6, 6),
    poster_url: "placeholder",
    price: rand(10.0..50.0).round(2)
  },
  {
    name: "Metal Gear Solid",
    description: "Infiltrate enemy bases and uncover a complex conspiracy in this stealth-action game.",
    release_date: Date.new(1998, 10, 21),
    poster_url: "placeholder",
    price: rand(10.0..50.0).round(2)
  }
]

games.each do |game|
  Game.create!(
    name: game[:name],
    description: game[:description],
    release_date: game[:release_date],
    poster_url: game[:poster_url],
    price: game[:price]
  )
end

puts "Seeds planted 🌱"
