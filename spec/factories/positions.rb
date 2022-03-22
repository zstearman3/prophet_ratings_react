# frozen_string_literal: true

FactoryBot.define do
  factory :position do
    name { Faker::Sports::Basketball.position }
    abbreviation { Faker::Alphanumeric.alpha(number: 2) }
  end
end
