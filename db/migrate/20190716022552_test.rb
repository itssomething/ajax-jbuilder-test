# frozen_string_literal: true

class Test < ActiveRecord::Migration[5.2]
  def change
    add_column :tests, :x, :string
    remove_column :tests, :id
    add_column :tests, :name, :primary_key
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
