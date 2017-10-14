require 'rails_helper'

describe "Static_pages" do

  describe "Home page" do
    it "'Sample App'の文言が含まれていること" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample_app')
    end

    it "titleに'tutorial | Home' が含まれていること" do
      visit 'static_pages/home'
      expect(page).to have_title("tutorial | Home")
    end
  end

  describe "help page" do
    it "'helpのページ'の文言が含まれていること" do
      visit '/static_pages/help'
      expect(page).to have_content('helpのページ')
    end

    it "titleに'tutorial | Help' が含まれていること" do
      visit 'static_pages/help'
      expect(page).to have_title("tutorial | Help")
    end
  end

  describe "About page" do
    it "'About Us'の文言が含まれていること" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "titleに'tutorial | About Us' が含まれていること" do
      visit 'static_pages/about'
      expect(page).to have_title("tutorial | About Us")
    end
  end

  describe "Contact Page" do
    it "'Contact'の文言が含まれていること" do
      visit 'static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "titleに'tutorial | Contact' が含まれていること" do
      visit 'static_pages/contact'
      expect(page).to have_title("tutorial | Contact")
    end
  end

end
