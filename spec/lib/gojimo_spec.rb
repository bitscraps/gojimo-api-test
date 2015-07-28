require 'rails_helper'

describe "Gojimo" do
  before(:each) do
    @gojimo = Gojimo.new
  end

  it "creates an instance of Gojimo" do
    expect(@gojimo).to be_instance_of Gojimo
  end

  it "retrieves a list of qualifications" do
    VCR.use_cassette("qualifications") do
      qualifications = @gojimo.get_qualifications

      expect(qualifications.first).to be_instance_of Qualification
      expect(qualifications.count).to eq 24
    end
  end

  it "retrieves details for a qualification" do
    VCR.use_cassette("qualification") do
      qualification = @gojimo.get_qualification("2622c2f7-73cb-49fa-941e-204f6735d0d8")

      expect(qualification).to be_instance_of Qualification
      expect(qualification.name).to eq "Junior Certificate"
    end
  end

  it "retrieves a list of subjects for a qualification" do
    VCR.use_cassette("qualification") do
      subjects = @gojimo.get_subjects_for("2622c2f7-73cb-49fa-941e-204f6735d0d8")

      expect(subjects.first).to be_instance_of Subject
      expect(subjects.count).to eq 9
    end
  end
end
