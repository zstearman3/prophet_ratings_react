# frozen_string_literal: true

FactoryBot.define do
  factory :season do
    year { randint(2020, 2029) }
    start_date { Faker::Date.between(from: '2020-01-01', to: '2029-12-31') }
    end_date { Faker::Date.between(from: '2020-01-01', to: '2029-12-31') }
    postseason_start_date { Faker::Date.between(from: '2020-01-01', to: '2029-12-31') }
  end
end
