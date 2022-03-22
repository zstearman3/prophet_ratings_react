# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Team, type: :model do
  before(:all) do
    @team1 = create(:team)
  end

  it "returns school as its parameter" do
    expect(@team1.to_param).to eq @team1.school
  end
end
