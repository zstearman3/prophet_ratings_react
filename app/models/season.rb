# frozen_string_literal: true

# Season is defined by a year integer and holds associations to all data that belongs to a given season
class Season < ApplicationRecord
  validates :year, uniqueness: true

  def to_param
    year
  end

  class << self
    def from_param(param)
      find_by_year!(param)
    end

    def current_season
      Season.find_by(year: current_year)
    end

    def current_year
      Rails.application.config_for(:config)[:current_season]
    end
  end
end
