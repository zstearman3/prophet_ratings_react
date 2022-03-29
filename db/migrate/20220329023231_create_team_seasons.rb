# frozen_string_literal: true

# Create TeamSeasons table
class CreateTeamSeasons < ActiveRecord::Migration[7.0]
  def up
    create_table :team_seasons do |t|
      t.references :team
      t.references :season
      t.integer :wins, default: 0
      t.integer :losses, default: 0
      t.float :offensive_efficiency
      t.float :defensive_efficiency
      t.float :points_per_game
      t.float :points_allowed_per_game
      t.float :rebounds_per_game
      t.float :assists_per_game
      t.float :rebound_rate
      t.float :assist_rate
      t.float :allowed_assist_rate
      t.float :three_point_rate
      t.float :three_point_proficiency
      t.float :allowed_three_point_proficiency
      t.float :home_court_advantage
      t.decimal :adjusted_offensive_efficiency, precision: 8, scale: 5
      t.decimal :adjusted_defensive_efficiency, precision: 8, scale: 5
      t.decimal :adjusted_total_efficiency, precision: 8, scale: 5
      t.decimal :adjusted_rebound_rate, precision: 8, scale: 5
      t.decimal :adjusted_assist_rate, precision: 8, scale: 5
      t.decimal :adjusted_allowed_assist_rate, precision: 8, scale: 5
      t.decimal :adjusted_three_point_proficiency, precision: 8, scale: 5
      t.decimal :adjusted_allowed_three_point_proficiency, precision: 8, scale: 5

      t.timestamps
    end
  end

  def down
    drop_table :team_seasons
  end
end
