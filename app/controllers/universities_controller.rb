class UniversitiesController < ApplicationController
  def index
    if params[:q].present?
      @universities = University.where('name like ?', "%#{params[:q]}%")
    else
      @universities = University.all
    end

    respond_to do |format|
      format.html {}
      format.json {}
    end
  end
end
