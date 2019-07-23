# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :content
      t.references :reviewable, polymorphic: true, index: true
      t.references :reviewer, index: true, references: :users

      t.timestamps
    end
  end
end
