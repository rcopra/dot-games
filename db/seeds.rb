# db/seeds.rb

puts "Cleaning up database..."
Booking.destroy_all
Game.destroy_all
User.destroy_all
puts "Database cleaned"

User.create(email: "lister@example.com", password: "123456")
User.create(email: "renter@example.com", password: "123456")

games = [
  {
    name: "Super Mario World",
    description: "Join Mario in his quest to rescue Princess Peach in this classic platformer.",
    poster_url: "https://res.cloudinary.com/dglqz7zll/image/upload/v1692789808/co65za_l1dhrh.png",
    price: rand(10.0..50.0).round(2),
    user_id: User.first.id,
    address: "Alexanderplatz 1, 10178 Berlin"
  },
  {
    name: "The Legend of Zelda: A Link to the Past",
    description: "Embark on a grand adventure as Link to save Princess Zelda and defeat Ganon.",
    poster_url: "https://res.cloudinary.com/dglqz7zll/image/upload/v1692789808/zelda_link_to_the_past_yfs6zy.png",
    price: rand(10.0..50.0).round(2),
    user_id: User.first.id,
    address: "Hauptstraße 15, 10317 Berlin"
  },
  {
    name: "Sonic the Hedgehog",
    description: "Help Sonic defeat Dr. Robotnik and his evil plans to take over the world.",
    poster_url: "https://res.cloudinary.com/dglqz7zll/image/upload/v1692789808/sonic_the_hedgehog_ankhf6.png",
    price: rand(10.0..50.0).round(2),
    user_id: User.first.id,
    address: "Potsdamer Platz 1, 10785 Berlin"
  },
  {
    name: "Street Fighter II",
    description: "Choose your fighter and battle against opponents from around the world.",
    poster_url: "https://res.cloudinary.com/dglqz7zll/image/upload/v1692789807/streetfighter2_nqnmcb.png",
    price: rand(10.0..50.0).round(2),
    user_id: User.first.id,
    address: "Kurfürstendamm 101, 10711 Berlin"
  },
  {
    name: "Donkey Kong Country",
    description: "Join Donkey Kong and Diddy Kong in their quest to reclaim their stolen bananas.",
    poster_url: "https://res.cloudinary.com/dglqz7zll/image/upload/v1692789807/donkeykong_etq3op.png",
    price: rand(10.0..50.0).round(2),
    user_id: User.first.id,
    address: "Friedrichstraße 185, 10117 Berlin"
  },
  {
    name: "Mortal Kombat",
    description: "Test your might in this brutal fighting game with iconic characters and fatalities.",
    poster_url: "https://res.cloudinary.com/dglqz7zll/image/upload/v1692789807/mortalkombat_yyerkc.png",
    price: rand(10.0..50.0).round(2),
    user_id: User.first.id,
    address: "Schlossstraße 1, 14059 Berlin"
  },
  {
    name: "Final Fantasy VII",
    description: "Embark on a journey with Cloud and his allies to save the planet from the evil Sephiroth.",
    poster_url: "https://res.cloudinary.com/dglqz7zll/image/upload/v1692789807/final_fantasy_tiysg9.jpg",
    price: rand(10.0..50.0).round(2),
    user_id: User.first.id,
    address: "Ritterstraße 24-27, 10969 Berlin"
  },
  {
    name: "Pokémon Red and Blue",
    description: "Catch 'em all and become a Pokémon Master in the Kanto region.",
    poster_url: "https://res.cloudinary.com/dglqz7zll/image/upload/v1692789807/pokemonred_byievr.png",
    price: rand(10.0..50.0).round(2),
    user_id: User.first.id,
    address: "bergmannstraße 96, 10961 Berlin"
  },
  {
    name: "Tetris",
    description: "Arrange falling blocks to create lines and clear the screen in this iconic puzzle game.",
    poster_url: "https://res.cloudinary.com/dglqz7zll/image/upload/v1692789807/tetris_zeyrxf.png",
    price: rand(10.0..50.0).round(2),
    user_id: User.first.id,
    address: "An den Treptowers 10, 12435 Berlin"
  },
  {
    name: "Metal Gear Solid",
    description: "Infiltrate enemy bases and uncover a complex conspiracy in this stealth-action game.",
    poster_url: "https://res.cloudinary.com/dglqz7zll/image/upload/v1692789807/metalgear_c0u5iq.png",
    price: rand(10.0..50.0).round(2),
    user_id: User.first.id,
    address: "Sedanstr. 14, 12167 Berlin"
  }
]

games.each do |game|
  Game.create!(
    name: game[:name],
    description: game[:description],
    poster_url: game[:poster_url],
    price: game[:price],
    user_id: game[:user_id],
    address: game[:address]
  )
end

puts "Seeds planted 🌱"
