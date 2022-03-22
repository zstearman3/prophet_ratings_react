# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Team, type: :model do
  before(:all) do
    @team1 = create(:team)
  end

  after(:all) do
    @team1.destroy
  end

  it 'returns school as its parameter' do
    expect(@team1.to_param).to eq @team1.school
  end

  it 'does not allow duplicate school values' do
    create(:team, school: 'Oklahoma')
    team3 = build(:team, school: 'Oklahoma')
    expect(team3).to_not be_valid
  end
end
