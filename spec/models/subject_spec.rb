require 'rails_helper'

describe "Subject" do
  describe "#initialize" do
    it "initialises a blank object" do
      subject = Subject.new
      expect(subject).to be_instance_of Subject
      expect(subject.title).to eq ""
    end

    it "initialises an object with attributes when passed" do
      subject = Subject.new({id: 1, title: 'English', link: 'api/v4/subjects/1'})
      expect(subject).to be_instance_of Subject
      expect(subject.title).to eq 'English'
    end
  end
end
