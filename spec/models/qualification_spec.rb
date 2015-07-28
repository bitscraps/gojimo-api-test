require 'rails_helper'

describe "Qualification" do
  describe "#initialize" do
    it "initialises a blank object" do
      qualification = Qualification.new
      expect(qualification).to be_instance_of Qualification
      expect(qualification.name).to eq ""
    end

    it "initialises an object with attributes when passed" do
      qualification = Qualification.new({id: 1, name: '11+ Common Entrance Exam', link: 'api/v4/qualifications/1'})
      expect(qualification).to be_instance_of Qualification
      expect(qualification.name).to eq '11+ Common Entrance Exam'
    end
  end
end
