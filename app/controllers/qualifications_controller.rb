class QualificationsController < ApplicationController
  def index
    gojimo = Gojimo.new
    @qualifications = gojimo.get_qualifications
  end
end
