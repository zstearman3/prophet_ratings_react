# frozen_string_literal: true

FactoryBot.define do
  factory :player do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    active { true }
    team
    class_designation
  end
end
