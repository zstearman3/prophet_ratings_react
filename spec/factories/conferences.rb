# frozen_string_literal: true

FactoryBot.define do
  factory :conference do
    name { Faker::Company.name }
    nickname { Faker::Alphanumeric.alpha(number: 3) }
    abbreviation { Faker::Alphanumeric.alpha(number: 3) }
  end
end
