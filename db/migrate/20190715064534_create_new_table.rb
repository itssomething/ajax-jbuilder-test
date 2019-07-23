# frozen_string_literal: true

class CreateNewTable < ActiveRecord::Migration[5.2]
  def change
    create_table :new_tables, id: false do |t|
      t.string :name
    end
  end
end
