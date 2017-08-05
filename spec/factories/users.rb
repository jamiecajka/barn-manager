FactoryGirl.define do
  factory :user do
      email 'test@email.com'
      name 'Jamie Cajka'
      phone_number '123-456-7890'
      address '123 Main St'
      city 'Lincoln'
      state 'Ne'
      zip_code '68506'
      password 'password'
      password_confirmation 'password'
      role 'admin'
    end
  end
