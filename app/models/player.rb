class Player < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  belongs_to :team
  belongs_to :class_designation

  def formatted_height
    feet = (height/12.0).floor
    inches = height % 12
    "#{feet}' #{inches}"
  end
end
