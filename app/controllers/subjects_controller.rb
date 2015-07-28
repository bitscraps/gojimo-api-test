class SubjectsController < ApplicationController
  def index
    gojimo = Gojimo.new
    @qualification = gojimo.get_qualification(params[:qualification_id])
  end
end
