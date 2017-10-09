require 'rails_helper'

describe "Static_pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample_app')
    end
  end
end
