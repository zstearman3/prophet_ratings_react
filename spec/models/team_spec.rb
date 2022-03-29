# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Team, type: :model do
  it 'returns school as its parameter' do
    team = create(:team)
    expect(team.to_param).to eq team.school
  end

  it 'does not allow duplicate school values' do
    create(:team, school: 'Oklahoma', nickname: 'Sooners', abbreviation: 'OU')
    invalid_team = build(:team, school: 'Oklahoma', nickname: 'Cowboys', abbreviation: 'OSU')
    expect(invalid_team).to_not be_valid
  end
end
