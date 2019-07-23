# frozen_string_literal: true

class ChangeNullAndDefaultOfNewTables < ActiveRecord::Migration[5.2]
  def change
    change_column_null :new_tables, :new_comment, :false
  end
end
