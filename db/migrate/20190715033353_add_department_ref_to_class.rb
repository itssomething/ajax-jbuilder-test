# frozen_string_literal: true

class AddDepartmentRefToClass < ActiveRecord::Migration[5.2]
  def change
    add_reference :classes, :department, foreign_key: true
  end
end
