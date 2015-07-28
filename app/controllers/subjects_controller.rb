class SubjectsController < ApplicationController
  def index
    gojimo = Gojimo.new
    @subjects = gojimo.get_subjects_for(params[:qualification_id])
    @qualification = gojimo.get_qualification(params[:qualification_id])
  end
end
