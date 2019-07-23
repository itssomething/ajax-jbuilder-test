# frozen_string_literal: true

class CreateJoinTableUserClass < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :classes do |t|
      # t.index [:user_id, :class_id]
      # t.index [:class_id, :user_id]
    end
  end
end
