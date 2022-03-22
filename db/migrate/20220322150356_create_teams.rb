# frozen_string_literal: true

# Creates Teams table
class CreateTeams < ActiveRecord::Migration[7.0]
  def up
    create_table :teams do |t|
      t.string :school, index: { unique: true }, null: false
      t.string :nickname, null: false
      t.string :abbreviation, index: { unique: true }, null: false
      t.string :primary_color
      t.string :secondary_color
      t.string :city
      t.references :state
      t.references :conference
      t.string :espn_url
      t.string :logo_url
      t.integer :espn_id, null: false

      t.timestamps null: true
    end
  end

  def down
    drop_table :teams
  end
end
