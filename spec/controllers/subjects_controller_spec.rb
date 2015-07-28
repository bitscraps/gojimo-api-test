require 'rails_helper'

describe SubjectsController do
  describe '#index' do
    it "gets a list of subjects for a qualification" do
      VCR.use_cassette("qualification") do
        get :index, qualification_id: "2622c2f7-73cb-49fa-941e-204f6735d0d8"

        expect(assigns(:subjects).count).to eq 9
      end
    end
  end
end
