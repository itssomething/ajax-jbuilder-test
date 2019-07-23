# frozen_string_literal: true

class AddRoleColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :integer
  end
end
