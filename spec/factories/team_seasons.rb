FactoryBot.define do
  factory :team_season do
    team
    season
    wins { randint(0, 30) }
    losses { randint(0, 30) }
    offensive_efficiency { rand(75.5..125.5) }
    defensive_efficiency { rand(75.5..125.5) }
    points_per_game { rand(55.5..80.0) }
    points_allowed_per_game { rand(55.5..80.0) }
  end
end
