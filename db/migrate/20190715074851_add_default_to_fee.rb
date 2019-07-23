# frozen_string_literal: true

class AddDefaultToFee < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :tuition_fee, from: nil, to: 1
  end
end
