# frozen_string_literal: true

# Creates States Table
class CreateStates < ActiveRecord::Migration[7.0]
  def up
    create_table :states do |t|
      t.string :name
      t.string :abbreviation
      t.timestamps null: true
    end
  end

  def down
    drop_table :states
  end
end
