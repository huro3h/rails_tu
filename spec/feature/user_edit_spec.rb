# frozen_string_literal: true
require "rails_helper"

feature "editページ" do
  context 'editページの時' do
    let!(:user) { create(:user) }
    before do
      visit login_path
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_button "Log in"
      visit edit_user_path(user.id)
      expect(page).to have_content 'Update your profile'
    end

    scenario 'パスワードが一致しない場合、エラーが発生すること' do
      fill_in "Password", with: "aaaaaaaa"
      fill_in "Password confirmation", with: "aaaaaaab"
      click_button "Save changes"
      expect(page).to have_css '.alert'
    end

    scenario 'パスワードが7文字以下の場合、更新に失敗すること' do
      fill_in "Password", with: "aaaaa"
      fill_in "Password confirmation", with: "aaaaa"
      click_button "Save changes"
      expect(page).to have_content 'Password is too short'
    end
  end
end