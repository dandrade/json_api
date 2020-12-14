json.id person.id
json.name person.name
json.email person.email

json.company do
  json.partial! "api/v1/companies/company", company: person.company
end

json.city do
  json.partial! "api/v1/cities/city", city: person.city
end
