# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Player, type: :model do
  it 'correctly converts height to feet and inches' do
    player = create(:player, height: 78)
    expect(player.formatted_height).to eq "6' 6"
  end

  it'requires a record to have a last_name' do
    invalid_player = build(:player, last_name: nil)
    expect(invalid_player).to_not be_valid
  end
end
