# frozen_string_literal: true

class AddDepartmentRefToGroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :department, foreign_key: true
  end
end
