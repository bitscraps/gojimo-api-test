require 'rails_helper'

feature 'A user' do
  scenario 'view a list of qualifications' do
    VCR.use_cassette("qualifications") do
      visit '/'

      expect(page).to have_content 'Qualifications'
      expect(page).to have_content 'ASVAB'
    end
  end
end
