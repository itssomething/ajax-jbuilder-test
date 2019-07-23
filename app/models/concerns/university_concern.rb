# frozen_string_literal: true

module UniversityConcern
  extend ActiveSupport::Concern

  class SaySomething
    def before_save(record)
      puts record.name
    end
  end
end
