# frozen_string_literal: true

class CreateUniversity < ActiveRecord::Migration[5.2]
  def change
    create_table :universities do |t|
      t.string :name
    end
  end
end
