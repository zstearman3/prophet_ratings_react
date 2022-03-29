# frozen_string_literal: true

# Create Seasons table
class CreateSeasons < ActiveRecord::Migration[7.0]
  def up
    create_table :seasons do |t|
      t.integer :year, index: { unique: true }, null: false
      t.date "start_date"
      t.date "end_date"
      t.date "postseason_start_date"

      t.timestamps null: true
    end
  end

  def down
    drop_table :seasons
  end
end
