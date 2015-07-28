require 'rails_helper'

describe "Gojimo" do
  it "creates an instance of Gojimo" do
    gojimo = Gojimo.new
    expect(gojimo).to be_instance_of Gojimo
  end

  it "retrieves a list of qualifications" do
    gojimo = Gojimo.new

    VCR.use_cassette("qualifications") do
      qualifications = gojimo.get_qualifications

      expect(qualifications.first).to be_instance_of Qualification
      expect(qualifications.count).to eq 24
    end
  end
end
