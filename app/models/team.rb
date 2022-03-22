# frozen_string_literal: true

# Team is the unique record for an individual school which will have many team seasons.
class Team < ApplicationRecord
  validates :school, uniqueness: true
  validates :nickname, presence: true
  validates :abbreviation, presence: true

  belongs_to :state
  belongs_to :conference
  has_many :players

  def self.from_param(param)
    find_by_school!(param)
  end

  def to_param
    school
  end
end
