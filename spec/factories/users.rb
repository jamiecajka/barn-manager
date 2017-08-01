FactoryGirl.define do
  factory :user do
      sequence(:email) { |n| "person#{n}@example.com" }
      name 'John'
      phone_number '123-456-7890'
      address '123 Main St'
      city 'Lincoln'
      state 'Ne'
      zip_code '68506'
      password 'password'
      password_confirmation 'password'
      trainer true
    end
  end
