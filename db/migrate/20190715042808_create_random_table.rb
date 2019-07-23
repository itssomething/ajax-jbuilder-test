# frozen_string_literal: true

class CreateRandomTable < ActiveRecord::Migration[5.2]
  def change
    create_table :random_tables, options: 'ENGINE=BLACKHOLE', comment: 'qwewqeqweqw' do |t|
    end
  end
end
