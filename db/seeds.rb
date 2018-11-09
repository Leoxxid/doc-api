require 'faker'

3.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    user_name: Faker::Internet.username,
    birthday: Faker::Date.birthday(min_age = 18, max_age = 65),
    address_attributes: {
      city: Faker::Address.city,
      street: Faker::Address.street_name,
      number: Faker::Address.building_number
    }
  )
end
