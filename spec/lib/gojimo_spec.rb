require 'rails_helper'

describe "Gojimo" do
  it "creates an instance of Gojimo" do
    gojimo = Gojimo.new
    expect(gojimo).to be_instance_of Gojimo
  end
end
