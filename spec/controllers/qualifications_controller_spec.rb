require 'rails_helper'

describe QualificationsController do
  describe '#index' do
    it 'gets a list of qualifications' do
      VCR.use_cassette("qualifications") do
        get :index

        expect(assigns(:qualifications).count).to eq 24
      end
    end
  end
end
