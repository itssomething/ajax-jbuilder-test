# frozen_string_literal: true

class RemoveClassFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :class, :string
  end
end
