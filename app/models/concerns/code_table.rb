# frozen_string_literal: true

module CodeTable
  extend ActiveSupport::Concern

  included do
    validates :name, uniqueness: true
    validates :abbreviation, uniqueness: true
  end
end
