# frozen_string_literal: true

class University < ApplicationRecord
  include UniversityConcern

  has_many :users
  has_many :reviews, as: :reviewable

  after_destroy :last_word, if: [proc { return_true? }, :return_true?]
  before_save SaySomething.new
  after_commit :send_commit_message
  after_rollback :send_rollback_message

  # validates :name, uniqueness: {
  #   message: ->(object, data) do
  #     "name #{object.name}, model #{data[:model]}, attr #{data[:attribute]}, val #{data[:value]}"
  #   end
  # }

  validates :name, uniqueness: true

  private

  def last_word
    puts 'callback after destroy'
  end

  def return_true?
    true
  end

  def return_false?
    false
  end

  def send_commit_message
    puts 'commited'
  end

  def send_rollback_message
    puts 'rollbacked'
  end
end
