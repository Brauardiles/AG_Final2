# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: "bardiles@aginternacional.com",
  password: "braulioam123",
  admin: true,
  Nickname: "Braulio Ardiles",
  Area: "Comercial",
  Position: "Supervisor"
)

20.times do |h|
  School.create(
    Rut: rand(1..150),
    rol_data_base: rand(1..15000),
    name: Faker::Educator.unique.secondary_school,
    type_of_school: rand(0..2),
    integration: rand(0..1),
    region: Faker::Address.state,
    comuna: Faker::Address.city,
    adress: Faker::Address.street_address,
    phone: Faker::PhoneNumber.cell_phone,
    email: "school#{h}@example.com"
  )
end

20.times do |i|
  Contact.create(
    name: Faker::FunnyName.two_word_name,
    position: Faker::Job.position,
    profesion: Faker::Company.profession,
    phone: Faker::PhoneNumber.phone_number,
    i_email: "school#{i}.professor#{i}@example.com",
    mobile_phone: Faker::PhoneNumber.cell_phone,
    p_email: Faker::Internet.email,
    school_id: rand(1..20)
  )
end

3.times do |j|
  User.create(
    email: "example#{j}@aginternacional.com",
    password: "12345678"
  )
end

10.times do |k|
  Business.create(
    name: Faker::Educator.subject,
    product: Faker::Educator.subject,
    amount: rand(1..150000),
    description:"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatio",
    user_id: rand(1..4),
    contact_id: rand(1..20)
)
end


# Sale.create(
#   blend_name: Faker::Coffee.blend_name,
#   origin: Faker::Coffee.origin,
#   amount: rand(100..10000),
#   price: rand(1990..5490),
#   date_time: Faker::Date.between(from: Date.new(2017,1,1), to: Date.today)
# )
# end
