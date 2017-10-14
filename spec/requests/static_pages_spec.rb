require 'rails_helper'

describe "Static_pages" do

  describe "Home page" do
    it "'Sample App'の文言が含まれていること" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample_app')
    end

    it "titleが正しく表示されていること" do
      visit 'static_pages/home'
      expect(page).to have_title("tutorial | Home")
    end
  end

  describe "help page" do
    it "'helpのページ'の文言が含まれていること" do
      visit '/static_pages/help'
      expect(page).to have_content('helpのページ')
    end

    it "titleが正しく表示されていること" do
      visit 'static_pages/help'
      expect(page).to have_title("tutorial | Help")
    end
  end

  describe "About page" do
    it "'About Us'の文言が含まれていること" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "titleが正しく表示されていること" do
      visit 'static_pages/about'
      expect(page).to have_title("tutorial | About Us")
    end
  end

end
