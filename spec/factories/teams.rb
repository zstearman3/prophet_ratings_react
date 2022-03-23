# frozen_string_literal: true

FactoryBot.define do
  factory :team do
    school { Faker::University.name }
    nickname { Faker::Team.mascot }
    abbreviation { Faker::Alphanumeric.alpha(number: 3) }
    state { State.first || association(:state) }
    conference { Conference.first || association(:conference) }
    espn_id { SecureRandom.hex(4) }
  end
end
