# frozen_string_literal: true

class CreateJoinTableSubjectDepartment < ActiveRecord::Migration[5.2]
  def change
    create_join_table :subjects, :departments do |t|
      t.belongs_to :subject
      t.belongs_to :department

      t.index %i[subject_id department_id]
    end
  end
end
