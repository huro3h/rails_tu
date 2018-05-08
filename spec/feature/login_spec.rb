# frozen_string_literal: true

require "rails_helper"
require "application_controller"

feature "loginページ" do
  context 'loginページにアクセスした時' do
    let!(:user) { create(:user) }
    before { visit '/login' }

    scenario 'ログインフォームが表示されていること' do
      expect(page).to have_content 'Log in'
    end

    scenario 'signupページへのリンクが表示されていること' do
      expect(page).to have_link('Sign up now!', href: '/signup')
    end

    scenario 'ログイン失敗の後、ページ遷移によるフラッシュ表示が適切にされていること' do
      fill_in "Email", with: ""
      fill_in "Password", with: ""
      click_button "Log in"
      expect(page).to have_current_path("/login")
      expect(page).to have_css(".alert-danger")
      visit "/"
      expect(page).to_not have_css(".alert-danger")
    end

    scenario '正常にログインできること' do
      visit '/login'
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_button "Log in"
      expect(current_path).to eq user_path(user)
    end

    scenario 'ログイン後、ログアウトのリンクが表示されていること' do
      visit '/login'
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_button "Log in"
      expect(page).to have_content "Log out"
    end
  end
end
