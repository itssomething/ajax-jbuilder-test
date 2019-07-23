# frozen_string_literal: true

class Admin::UniversitiesController < ApplicationController
  def index
    @universities = University.all
  end
end
