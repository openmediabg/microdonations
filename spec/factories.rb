FactoryGirl.define do
  sequence(:email) { |n| "user-#{n}@example.org" }

  factory :user do
    first_name 'John'
    last_name 'Doe'
    password 'password'
    password_confirmation 'password'
    email
  end
end
