require 'faker'
100.times do |i|
  Company.create(
    name: Faker::Company.unique.name
  )
end
puts "Companies # #{Company.count} created."