# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
# Veterinarian.create(
#   name: 'Dan Fisher',
#   phone_number: '402-555-1234',
#   address: '123 Vet Clinic Road',
#   city: 'Waverly',
#   state: 'Nebraska',
#   zip_code: '68511'
# )
#
# Farrier.create(
#   name: 'Vernon Johns',
#   phone_number: '402-555-9876',
#   address: '123 Horse Shoe Road',
#   city: 'Omaha',
#   state: 'Nebraska',
#   zip_code: '68011'
# )
#
# User.create(
#   name: 'Jamie Cajka',
#   phone_number: '123-456-7890',
#   address: '123 Main St',
#   city: 'Lincoln',
#   state: 'Ne',
#   zip_code: '68506',
#   email: 'jamiecajka@gmail.com',
#   password: 'password'
# )

# Charge.create(
#   date: '8/01/17',
#   description: 'August Board',
#   amount: 400.00,
#   horse_id: 1
# )
#
# Charge.create(
#   date: '8/01/17',
#   description: 'August Board',
#   amount: 400.00,
#   horse_id: 2
# )
#
# Charge.create(
#   date: '8/01/17',
#   description: 'August Board',
#   amount: 400.00,
#   horse_id: 3
# )

Event.create(
  date: '8/23/17',
  description: 'Farrier Visit',
  horse_id: 1
)

Event.create(
  date: '8/23/17',
  description: 'Farrier Visit',
  horse_id: 2
)
#
# Event.create(
#   date: '8/23/17',
#   description: 'Farrier Visit',
#   horse_id: 3
# )
