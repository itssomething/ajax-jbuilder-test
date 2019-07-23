# frozen_string_literal: true

class Department < ApplicationRecord
  has_many :groups

  has_one :department_detail

  has_and_belongs_to_many :subjects
end
