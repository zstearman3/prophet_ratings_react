# frozen_string_literal: true

# Create Positions table
class CreatePositions < ActiveRecord::Migration[7.0]
  def up
    create_table :positions do |t|
      t.string :name, index: { unique: true }, null: false
      t.string :abbreviation, index: { unique: true }, null: false

      t.timestamps null: true
    end
  end

  def down
    drop_table :positions
  end
end
