# frozen_string_literal: true

class AddDepartmentRefToDepartmentDetail < ActiveRecord::Migration[5.2]
  def change
    add_reference :department_details, :department, foreign_key: true
  end
end
