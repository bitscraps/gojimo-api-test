require 'rails_helper'

feature 'A user' do
  scenario 'view a list of qualifications' do
    VCR.use_cassette("qualifications") do
      visit '/'

      expect(page).to have_content 'Qualifications'
      expect(page).to have_content 'ASVAB'
    end
  end

  scenario 'view a list of subjects for a qualification' do
    VCR.use_cassette("qualifications") do
      visit '/'
    end

    VCR.use_cassette("qualification") do
      within '#2622c2f7-73cb-49fa-941e-204f6735d0d8' do
        click_link 'View Subjects'
      end
    end

    expect(page).to have_content 'Subjects'
    expect(page).to have_content 'Music'
  end
end
