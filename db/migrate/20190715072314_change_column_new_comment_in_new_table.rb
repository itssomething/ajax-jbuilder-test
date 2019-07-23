# frozen_string_literal: true

class ChangeColumnNewCommentInNewTable < ActiveRecord::Migration[5.2]
  def change
    change_column :new_tables, :new_comment, :text
  end
end
