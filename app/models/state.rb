# frozen_string_literal: true

class State < ApplicationRecord
  include CodeTable

  has_many :teams
end
