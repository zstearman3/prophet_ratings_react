# frozen_string_literal: true

class Conference < ApplicationRecord
  validates :name, uniqueness: true
  validates :nickname, uniqueness: true
  validates :abbreviation, uniqueness: true

  has_many :teams
end
