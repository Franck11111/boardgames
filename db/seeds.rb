# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "test@test.com", encrypted_password: "test")
Boardgame.create(title: "Gloomhaven", description: "Vanquish monsters with strategic cardplay. Fulfill your quest to leave your legacy! ", price_per_day: 10, user_id: 1 )
Boardgame.create(title: "Pandemic Legacy: Season 1", description: "Mutating diseases are spreading around the world - can your team save humanity?", price_per_day: 10, user_id: 1)
Boardgame.create(title: "Brass: Birmingham", description: "Build networks, grow industries, and navigate the world of the Industrial Revolution. ", price_per_day: 10, user_id: 1)
Boardgame.create(title: "Terraforming Mars", description: "Compete with rival CEOs to make Mars habitable and build your corporate empire. ", price_per_day: 10, user_id: 1)
Boardgame.create(title: "Gloomhaven: Jaws of the Lion", description: "Vanquish monsters with strategic cardplay in a 25-scenario Gloomhaven campaign. ", price_per_day: 10, user_id: 1)
Boardgame.create(title: "Twilight Imperium:", description: "Build an intergalactic empire through trade, research, conquest and grand politics. ", price_per_day: 10, user_id: 1)
