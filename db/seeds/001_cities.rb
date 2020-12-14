require 'faker'
100.times do |i|
  City.create(
    name: Faker::Address.unique.city,
    state: Faker::Address.state_abbr
  )
end
puts "Cities # #{City.count} created."