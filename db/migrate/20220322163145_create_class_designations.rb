# frozen_string_literal: true

# Create ClassDesignations table
class CreateClassDesignations < ActiveRecord::Migration[7.0]
  def up
    create_table :class_designations do |t|
      t.string :name, index: { unique: true }, null: false
      t.string :abbreviation, index: { unique: true }, null: false

      t.timestamps null: true
    end
  end

  def down
    drop_table :class_designations
  end
end
