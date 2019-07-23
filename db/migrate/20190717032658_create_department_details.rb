# frozen_string_literal: true

class CreateDepartmentDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :department_details do |t|
      t.string :address

      t.timestamps
    end
  end
end
