# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :reviewable, polymorphic: true
  belongs_to :reviewer, class_name: User.name, foreign_key: :reviewer_id
end
