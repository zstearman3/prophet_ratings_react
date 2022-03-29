# frozen_string_literal: true

# Create Players table
class CreatePlayers < ActiveRecord::Migration[7.0]
  def up
    create_table :players do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.boolean :active, default: true
      t.integer :jersey_number
      t.integer :height
      t.integer :weight
      t.string :birthplace
      t.references :team, null: false
      t.references :class_designation
      t.integer :espn_id
      t.string :espn_url

      t.timestamps null: true
    end
  end

  def down
    drop_table :players
  end
end
