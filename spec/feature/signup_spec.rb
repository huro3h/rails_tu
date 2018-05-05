require "rails_helper"

feature 'signupページ' do
  context 'signupページにアクセスした時' do
    before { visit "/signup" }
    scenario '正しくユーザー登録ができること' do
      fill_in "Name", with: "Taro Maruwa"
      fill_in "Email", with: "sample@sample.com"
      fill_in "Password", with: "11111111"
      fill_in "Confirmation", with: "11111111"
      click_button 'Create my account'

      expect(User.last.name).to eq "Taro Maruwa"
      expect(User.last.email).to eq "sample@sample.com"
    end
  end
end