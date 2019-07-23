# frozen_string_literal: true

class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :detail1, :string
    add_column :users, :detail2, :string
  end
end
