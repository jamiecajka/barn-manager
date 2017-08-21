# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Veterinarian.create(
  name: 'Ima Vet',
  phone_number: '402-555-1234',
  address: '123 Vet Clinic Road',
  city: 'Waverly',
  state: 'Nebraska',
  zip_code: '68511'
)

Farrier.create(
  name: 'Ima Farrier',
  phone_number: '402-555-9876',
  address: '123 Horse Shoe Road',
  city: 'Omaha',
  state: 'Nebraska',
  zip_code: '68011'
)

User.create(
  name: 'Jamie Cajka',
  phone_number: '123-456-7890',
  address: '123 Main St',
  city: 'Lincoln',
  state: 'Ne',
  zip_code: '68506',
  email: 'jamiecajka@gmail.com',
  password: 'password'
)

User.create(
  name: 'Hipster Frog',
  phone_number: '123-456-7890',
  address: '123 Main St',
  city: 'Lincoln',
  state: 'Ne',
  zip_code: '68506',
  email: 'hipfrog@ribbit.com',
  password: 'password',
  role: 'admin'
)

taco = Horse.create(
  registered_name: 'Ima Dancing Taco',
  barn_name: 'Taco',
  breed: 'Quarter Horse',
  discipline: 'Western',
  user_id: 1,
  veterinarian_id: 1,
  farrier_id: 1
  )
  taco.picture = Rails.root.join('db/images/Taco.jpg').open
  taco.save!

  noah = Horse.create(
    registered_name: 'MA Nobelesse',
    barn_name: 'Noah',
    breed: 'Arabian',
    discipline: 'English',
    user_id: 1,
    veterinarian_id: 1,
    farrier_id: 1
    )
    noah.picture = Rails.root.join('db/images/Noah.jpg').open
    noah.save!

    kas = Horse.create(
      registered_name: 'RA Kasanova',
      barn_name: 'Kas',
      breed: 'Arabian',
      discipline: 'Western',
      user_id: 1,
      veterinarian_id: 1,
      farrier_id: 1
      )
      kas.picture = Rails.root.join('db/images/Kas.jpg').open
      kas.save!

10.times do
  Note.create(
  horse_id: rand(1..3),
  text: Faker::Hipster.paragraph
  )
end

6.times do
  Event.create(
    horse_id: rand(1..3),
    date: 20170901,
    time: '12:00 pm',
    description: Faker::Lovecraft.sentence(3, 1),
    notes: Faker::Hacker.say_something_smart
  )
end

10.times do
  Charge.create(
    horse_id: rand(1..3),
    date: 20170901,
    description: Faker::ChuckNorris.fact,
    amount: Faker::Number.decimal(2)
  )
end
