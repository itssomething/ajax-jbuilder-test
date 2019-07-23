# frozen_string_literal: true

class CreateClass < ActiveRecord::Migration[5.2]
  def change
    create_table :classes do |t|
      t.string :name
      t.integer :max_student
    end
  end
end
