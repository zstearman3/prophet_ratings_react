# frozen_string_literal: true

FactoryBot.define do
  factory :team do
    school { 'Oklahoma' }
    nickname { 'Sooners' }
    abbreviation { 'OU' }
    state
    conference
    espn_id { SecureRandom.hex(4) }
  end
end
