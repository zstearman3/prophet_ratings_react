# frozen_string_literal: true

# TeamSeason contains the main data used to compare teams including all adjusted efficiencies
class TeamSeason < ApplicationRecord
  belongs_to :team
  belongs_to :season
end
