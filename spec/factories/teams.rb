# frozen_string_literal: true

FactoryBot.define do
  factory :team do
    school { Faker::University.name }
    nickname { Faker::Team.mascot }
    abbreviation { Faker::Alphanumeric.alpha(number: 3) }
    state
    conference
    espn_id { SecureRandom.hex(4) }
  end
end
