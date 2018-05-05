require "rails_helper"

feature 'signupページ' do
  context 'signupページにアクセスした時' do
    before { visit "/signup" }
    scenario 'ユーザー登録完了後、個別ページへ遷移すること' do
      fill_in "Name", with: "Taro Maruwa"
      fill_in "Email", with: "sample@sample.com"
      fill_in "Password", with: "11111111"
      fill_in "Confirmation", with: "11111111"
      click_button 'Create my account'

      expect(current_path).to eq "/users/#{User.last.id}"
      expect(User.last.name).to eq "Taro Maruwa"
      expect(User.last.email).to eq "sample@sample.com"
    end

    scenario '必須項目が抜けていたらエラーが表示されること' do
      fill_in "Email", with: "sample@sample.com"
      fill_in "Password", with: "11111111"
      fill_in "Confirmation", with: "11111111"
      click_button 'Create my account'

      expect(page).to have_css '.alert-danger'
      expect(current_path).to eq users_path
    end
  end
end