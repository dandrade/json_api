require 'faker'

10000.times do |i|
  count = City.count
  random_offset = rand(count)
  random_city = City.offset(random_offset).first

  count_company = Company.count
  random_offset_company = rand(count_company)
  random_company = Company.offset(random_offset_company).first

  Person.create(
    name: Faker::Name.unique.name,
    email: Faker::Internet.unique.email,
    company: random_company,
    city: random_city
  )

end
puts "People # #{Person.count} created."