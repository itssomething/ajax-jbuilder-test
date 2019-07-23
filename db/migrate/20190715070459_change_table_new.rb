# frozen_string_literal: true

class ChangeTableNew < ActiveRecord::Migration[5.2]
  def change
    change_table :new_tables do |t|
      t.string :comment
      t.remove :name
      t.rename :comment, :new_comment
    end
  end
end
