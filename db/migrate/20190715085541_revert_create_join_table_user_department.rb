# frozen_string_literal: true

require_relative '20190715065905_create_join_table_test'

class RevertCreateJoinTableUserDepartment < ActiveRecord::Migration[5.2]
  def change
    revert CreateJoinTableTest
  end
end
