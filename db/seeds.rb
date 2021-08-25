# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Review.destroy_all
Booking.destroy_all



puts "Creating users..."
User.create(email: "test@test.com", encrypted_password: "test")

User.create([
  {email: "testgf@gmail.com", password: "testtest", password_confirmation: "testtest", first_name: "Greg", last_name: "F"},
  {email: "testiv@gmail.com", password: "testtest", password_confirmation: "testtest", first_name: "Indira", last_name: "V"},
  {email: "test@gmail.com", password: "testtest", password_confirmation: "testtest" }
])
puts User.count
puts "Creating boardgames..."

Boardgame.create(title: "Gloomhaven", description: "Vanquish monsters with strategic cardplay. Fulfill your quest to leave your legacy!", price_per_day: 10, cover_url: "https://cf.geekdo-images.com/sZYp_3BTDGjh2unaZfZmuA__original/img/7d-lj5Gd1e8PFnD97LYFah2c45M=/0x0/filters:format(jpeg)/pic2437871.jpg", user_id: 7)
Boardgame.create(title: "Pandemic Legacy: Season 1", description: "Mutating diseases are spreading around the world - can your team save humanity?", price_per_day: 10, cover_url: "https://cf.geekdo-images.com/-Qer2BBPG7qGGDu6KcVDIw__original/img/PlzAH7swN1nsFxOXbfUvE3TkE5w=/0x0/filters:format(png)/pic2452831.png", user_id: 7)
Boardgame.create(title: "Brass: Birmingham", description: "Build networks, grow industries, and navigate the world of the Industrial Revolution.", price_per_day: 10, cover_url: "https://cf.geekdo-images.com/x3zxjr-Vw5iU4yDPg70Jgw__original/img/FpyxH41Y6_ROoePAilPNEhXnzO8=/0x0/filters:format(jpeg)/pic3490053.jpg", user_id: 7)
Boardgame.create(title: "Terraforming Mars", description: "Compete with rival CEOs to make Mars habitable and build your corporate empire.", price_per_day: 10, cover_url: "https://cf.geekdo-images.com/wg9oOLcsKvDesSUdZQ4rxw__original/img/thIqWDnH9utKuoKVEUqveDixprI=/0x0/filters:format(jpeg)/pic3536616.jpg", user_id: 7)
Boardgame.create(title: "Gloomhaven: Jaws of the Lion", description: "Vanquish monsters with strategic cardplay in a 25-scenario Gloomhaven campaign.", price_per_day: 10, cover_url: "https://cf.geekdo-images.com/_HhIdavYW-hid20Iq3hhmg__original/img/PBzsLRqNKQKJxGnzpb7o3qLWPQM=/0x0/filters:format(jpeg)/pic5055631.jpg", user_id: 7)
Boardgame.create(title: "Twilight Imperium", description: "Build an intergalactic empire through trade, research, conquest and grand politics.", price_per_day: 10, cover_url: "https://cf.geekdo-images.com/_Ppn5lssO5OaildSE-FgFA__original/img/kVpZ0Maa_LeQGWxOqsYKP3N4KUY=/0x0/filters:format(jpeg)/pic3727516.jpg", user_id: 7)
Boardgame.create(title: "Gaia Project", description: "Expand, research, upgrade, and settle the galaxy with one of 14 alien species.", price_per_day: 10, cover_url: "https://cf.geekdo-images.com/hGWFm3hbMlCDsfCsauOQ4g__original/img/tjlflQtUPFiTpLpwk1NCVCS29Ic=/0x0/filters:format(png)/pic5375625.png", user_id: 7)
Boardgame.create(title: "Star Wars: Rebellion", description: "Strike from your hidden base as the Rebels—or find and destroy it as the Empire.", price_per_day: 10, cover_url: "https://cf.geekdo-images.com/7SrPNGBKg9IIsP4UQpOi8g__original/img/GKueTbkCk2Ramf6ai8mDj-BP6cI=/0x0/filters:format(jpeg)/pic4325841.jpg", user_id: 7)
puts Boardgame.count
puts "Finished!"
