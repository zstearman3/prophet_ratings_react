# frozen_string_literal: true

# Creates Class Table
class CreateConferences < ActiveRecord::Migration[7.0]
  def up
    create_table :conferences do |t|
      t.string :name, index: { unique: true }, null: false
      t.string :nickname, index: { unique: true }, null: false
      t.string :abbreviation, index: { unique: true }, null: false
      t.string :logo_url
      t.timestamps null: true
    end
  end

  def down
    drop_table :conferences
  end
end
