# frozen_string_literal: true

class AddClassToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :class, :string
    add_index :users, :class
  end
end
