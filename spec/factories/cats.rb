# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :cat do
    name     { Faker::Name.name } # Why using lamdba here?
    birthday { Faker::Date.birthday }
    email { Faker::Internet.email }
    password_confirmation "12345678"
    password "12345678"
    visible  true
  end
end
