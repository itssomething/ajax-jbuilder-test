# frozen_string_literal: true

class AddTuitionFeeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :tuition_fee, :decimal, precision: 5, scale: 2
  end
end
