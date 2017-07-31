# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    name: 'Test Trainer',
    email: 'testtrainer@gmail.com',
    phone_number: '402-555-1234',
    address: 'Seagull Performance Horses',
    city: 'Lincoln',
    state: 'Nebraska',
    zip_code: '68527',
    trainer: true
  )
  User.create(
    name: 'Test Owner',
    email: 'iownhorses@gmail.com',
    phone_number: '402-555-4709',
    address: '2002 N 148th Street',
    city: 'Lincoln',
    state: 'Nebraska',
    zip_code: '68527',
    trainer: false
  )
User.create(
    name: 'Samantha Cajka',
    email: 'iownhorses@gmail.com',
    phone_number: '402-555-5035',
    address: '2002 N 148th Street',
    city: 'Lincoln',
    state: 'Nebraska',
    zip_code: '68527',
    trainer: false
  )

Veterinarian.create(
  name: 'Dan Fisher',
  phone_number: '402-555-1234',
  address: '123 Vet Clinic Road',
  city: 'Waverly',
  state: 'Nebraska',
  zip_code: '68511'
)

Farrier.create(
  name: 'Vernon Johns',
  phone_number: '402-555-9876',
  address: '123 Horse Shoe Road',
  city: 'Omaha',
  state: 'Nebraska',
  zip_code: '68011'
)

Horse.create(
  registered_name: 'RA Kasanova',
  barn_name: 'Kas',
  breed: "Arabian",
  disipline: 'Hunt/Western',
  trainer_id: 1,
  owner_id: 2,
  veterinarian_id: 1,
  farrier_id: 1
)

Horse.create(
  registered_name: 'Ima Dancing Taco',
  barn_name: 'Taco',
  breed: "Quarter Horse",
  disipline: 'Cutting',
  trainer_id: 1,
  owner_id: 3,
  veterinarian_id: 1,
  farrier_id: 1
)

Horse.create(
  registered_name: 'Smokesmart Hollywood',
  barn_name: 'Smokey',
  breed: "Quarter Horse",
  disipline: 'Reining',
  trainer_id: 1,
  owner_id: 1,
  veterinarian_id: 1,
  farrier_id: 1
)

Charge.create(
  date: '8/01/17',
  description: 'August Board',
  amount: 400.00,
  horse_id: 1
)

Charge.create(
  date: '8/01/17',
  description: 'August Board',
  amount: 400.00,
  horse_id: 2
)

Charge.create(
  date: '8/01/17',
  description: 'August Board',
  amount: 400.00,
  horse_id: 3
)

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

Event.create(
  date: '8/23/17',
  description: 'Farrier Visit',
  horse_id: 3
)
