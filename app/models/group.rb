# frozen_string_literal: true

class Group < ApplicationRecord
  belongs_to :department
  has_many :groups_users
  has_many :users, through: :groups_users
end
