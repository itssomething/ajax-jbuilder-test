# frozen_string_literal: true

class CreateJoinTableTest < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :departments do |t|
      t.index :user_id
      t.index :department_id
      t.string :name
    end
  end
end
