# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Creating users..."

User.create([
  {email: "testgf@gmail.com", password: "testtest", password_confirmation: "testtest", first_name: "Greg", last_name: "F"},
  {email: "testiv@gmail.com", password: "testtest", password_confirmation: "testtest", first_name: "Indira", last_name: "V"},
  {email: "test@gmail.com", password: "testtest", password_confirmation: "testtest" }
  ])
    puts "Total users added #{User.count}"

    puts "Creating boardgames..."

Boardgame.create(title: "Gloomhaven", description: "Gloomhaven is a game of Euro-inspired tactical combat in a persistent world of shifting motives. Players will take on the role of a wandering adventurer with their own special set of skills and their own reasons for traveling to this dark corner of the world. Players must work together out of necessity to clear out menacing dungeons and forgotten ruins. In the process,
  they will enhance their abilities with experience and loot, discover new locations to explore and plunder, and expand an ever-branching story fueled by the decisions they make.", price_per_day: 10,
  cover_url: "https://cf.geekdo-images.com/sZYp_3BTDGjh2unaZfZmuA__original/img/7d-lj5Gd1e8PFnD97LYFah2c45M=/0x0/filters:format(jpeg)/pic2437871.jpg", desc_short: "Vanquish monsters with strategic cardplay. Fulfill your quest to leave your legacy!",
  minplayers: 1, maxplayers: 4, playingtime: 90, minage: 14, user_id: 1)

Boardgame.create(title: "Pandemic Legacy: Season 1", description: "Pandemic Legacy is a co-operative campaign game, with an overarching story-arc played through 12-24 sessions, depending on how well your group does at the game. At the beginning, the game starts very similar to basic Pandemic, in which your team of disease-fighting specialists races against the clock to travel around the world, treating disease hotspots while researching cures for each of four plagues before they get out of hand.", price_per_day: 10,
  cover_url: "https://cf.geekdo-images.com/-Qer2BBPG7qGGDu6KcVDIw__original/img/PlzAH7swN1nsFxOXbfUvE3TkE5w=/0x0/filters:format(png)/pic2452831.png",
  desc_short: "Mutating diseases are spreading around the world - can your team save humanity?",
  minplayers: 2, maxplayers: 4, playingtime: 60, minage: 14, user_id: 1)

Boardgame.create(title: "Brass: Birmingham", description: "Brass: Birmingham is an economic strategy game sequel to Martin Wallace' 2007 masterpiece, Brass. Birmingham tells the story of competing entrepreneurs in Birmingham during the industrial revolution, between the years of 1770-1870.
  As in its predecessor, you must develop, build, and establish your industries and network, in an effort to exploit low or high market demands.", price_per_day: 10,
  cover_url: "https://cf.geekdo-images.com/x3zxjr-Vw5iU4yDPg70Jgw__original/img/FpyxH41Y6_ROoePAilPNEhXnzO8=/0x0/filters:format(jpeg)/pic3490053.jpg", desc_short: "Build networks, grow industries, and navigate the world of the Industrial Revolution.",
  minplayers: 2, maxplayers: 4, playingtime: 90, minage: 15, user_id: 1)

Boardgame.create(title: "Terraforming Mars", description: "In the 2400s, mankind begins to terraform the planet Mars. Giant corporations, sponsored by the World Government on Earth, initiate huge projects to raise the temperature, the oxygen level, and the ocean coverage until the environment is habitable. In Terraforming Mars, you play one of those corporations and work together in the terraforming process, but compete for getting victory points that are awarded not only for your contribution to the terraforming, but also for advancing human infrastructure throughout the solar system, and doing other commendable things.", price_per_day: 10,
  cover_url: "https://cf.geekdo-images.com/wg9oOLcsKvDesSUdZQ4rxw__original/img/thIqWDnH9utKuoKVEUqveDixprI=/0x0/filters:format(jpeg)/pic3536616.jpg", desc_short: "Compete with rival CEOs to make Mars habitable and build your corporate empire.",
  minplayers: 1, maxplayers: 5, playingtime: 120, minage: 12, user_id: 1)

Boardgame.create(title: "Gloomhaven: Jaws of the Lion", description: "Gloomhaven: Jaws of the Lion is a standalone game that takes place before the events of Gloomhaven. The game includes four new characters — Valrath Red Guard (tank, crowd control), Inox Hatchet (ranged damage), Human Voidwarden (support, mind-control), and Quatryl Demolitionist (melee damage, obstacle manipulation) — that can also be used in the original Gloomhaven game.
  The game also includes 16 monster types (including seven new standard monsters and three new bosses) and a new campaign with 25 scenarios that invites the heroes to investigate a case of mysterious disappearances within the city. Is it the work of Vermlings, or is something far more sinister going on?
  Gloomhaven: Jaws of the Lion is aimed at a more casual audience to get people into the gameplay more quickly. All of the hard-to-organize cardboard map tiles have been removed, and instead players will play on the scenario book itself, which features new artwork unique to each scenario. The last barrier to entry — i.e., learning the game — has also been lowered through a simplified rule set and a five-scenario tutorial that will ease new players into the experience.", price_per_day: 10,
  cover_url: "https://cf.geekdo-images.com/_HhIdavYW-hid20Iq3hhmg__original/img/PBzsLRqNKQKJxGnzpb7o3qLWPQM=/0x0/filters:format(jpeg)/pic5055631.jpg", desc_short: "Vanquish monsters with strategic cardplay in a 25-scenario Gloomhaven campaign.",
  minplayers: 1, maxplayers: 4, playingtime: 90, minage: 14, user_id: 1)

Boardgame.create(title: "Twilight Imperium", description: "Twilight Imperium is a game of galactic conquest in which three to six players take on the role of one of seventeen factions vying for galactic domination through military might, political maneuvering, and economic bargaining. Every faction offers a completely different play experience, from the wormhole-hopping Ghosts of Creuss to the Emirates of Hacan, masters of trade and economics. These seventeen races are offered many paths to victory, but only one may sit upon the throne of Mecatol Rex as the new masters of the galaxy.", price_per_day: 10,
  cover_url: "https://cf.geekdo-images.com/_Ppn5lssO5OaildSE-FgFA__original/img/kVpZ0Maa_LeQGWxOqsYKP3N4KUY=/0x0/filters:format(jpeg)/pic3727516.jpg", desc_short: "Build an intergalactic empire through trade, research, conquest and grand politics.",
  minplayers: 3, maxplayers: 6, playingtime: 300, minage: 14, user_id: 1)

Boardgame.create(title: "Gaia Project", description: "Gaia Project is a new game in the line of Terra Mystica. As in the original Terra Mystica, fourteen different factions live on seven different kinds of planets, and each faction is bound to their own home planets, so to develop and grow, they must terraform neighboring planets into their home environments in competition with the other groups. In addition, Gaia planets can be used by all factions for colonization, and Transdimensional planets can be changed into Gaia planets.", price_per_day: 10,
  cover_url: "https://cf.geekdo-images.com/hGWFm3hbMlCDsfCsauOQ4g__original/img/tjlflQtUPFiTpLpwk1NCVCS29Ic=/0x0/filters:format(png)/pic5375625.png", desc_short: "Expand, research, upgrade, and settle the galaxy with one of 14 alien species.",
  minplayers: 1, maxplayers: 4, playingtime: 120, minage: 12, user_id: 1)

Boardgame.create(title: "Star Wars: Rebellion", description: "Star Wars: Rebellion is a board game of epic conflict between the Galactic Empire and Rebel Alliance for two to four players.
Experience the Galactic Civil War like never before. In Rebellion, you control the entire Galactic Empire or the fledgling Rebel Alliance. You must command starships, account for troop movements, and rally systems to your cause. Given the differences between the Empire and Rebel Alliance, each side has different win conditions, and you'll need to adjust your play style depending on who you represent:", price_per_day: 10,
  cover_url: "https://cf.geekdo-images.com/7SrPNGBKg9IIsP4UQpOi8g__original/img/GKueTbkCk2Ramf6ai8mDj-BP6cI=/0x0/filters:format(jpeg)/pic4325841.jpg", desc_short: "Strike from your hidden base as the Rebels—or find and destroy it as the Empire.",
  minplayers: 2, maxplayers: 4, playingtime: 180, minage: 14, user_id: 1)

  pp Boardgame.all
  puts "Total game added #{Boardgame.count}"
  puts "Finished!"
