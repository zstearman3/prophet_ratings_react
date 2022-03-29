# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Season, type: :model do
  before(:all) do
    @current_year = Rails.application.config_for(:config)[:current_season]
    @current_season = create(:season, year: @current_year)
  end

  after(:all) do
    @current_season.destroy
  end

  it 'returns current season that matches the config yaml' do
    expect(Season.current_season.year).to eq @current_year
  end
end
