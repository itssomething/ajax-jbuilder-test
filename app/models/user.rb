# frozen_string_literal: true

class User < ApplicationRecord
  # default_scope { where("id > 3") }
  scope :id_greater_than_one, -> { where('id > 1') }
  scope :created_in_month, -> { where(created_at: Time.now..(Time.now - 1.month)) }
  scope :id_greater_than, ->(value) { where('id > ?', value) if value.present? }
  scope :id_greater_than_two, ->(id) { find_by_sql('select * from users where id > ?', id) }
  scope :id_greater_than_hundred, -> { where('id > 100') }

  enum role: { student: 1, teacher: 2 }

  validates :name, presence: true

  belongs_to :university, class_name: University.name, foreign_key: 'university_id', autosave: true, optional: true

  has_many :groups_users
  has_many :groups, through: :groups_users

  has_many :reviews, class_name: Review.name, foreign_key: :reviewer_id
  # validates :groups, presence: true
end
