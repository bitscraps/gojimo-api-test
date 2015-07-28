class SubjectsController < ApplicationController
  def index
    gojimo = Gojimo.new
    @subjects = gojimo.get_subjects_for(params[:qualification_id])
  end
end
