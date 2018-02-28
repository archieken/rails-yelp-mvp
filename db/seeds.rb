# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting"

Restaurant.destroy_all

4.times do Restaurant.create(
name: ["Cheryl", "Victoria", "Mel", "Brittany", "Mo","Kylie", "Mia", "Katie", "Beyonce"].sample,
address: ["London", "Paris", "Berlin", "Rio", "Rome"].sample,
phone_number: 8.times{(0..10).to_a.sample.to_s},
category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
end


puts "Ended"
