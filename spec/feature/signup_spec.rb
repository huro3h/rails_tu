require "rails_helper"

feature 'signupページ' do
  context 'signupページにアクセスした時' do
    before { visit "/signup" }

    scenario 'ユーザー登録完了後、個別ページへ遷移すること' do
      fill_in "Name", with: "test_test"
      fill_in "Email", with: "test@example.com"
      fill_in "Password", with: "password"
      fill_in "Confirmation", with: "password"
      click_button 'Create my account'

      expect(current_path).to eq "/users/#{User.last.id}"
      expect(page).to have_content "Log out"
    end

    scenario '必須項目が抜けていたらエラーが表示されること' do
      fill_in "Email", with: "test@example.com"
      fill_in "Password", with: "password"
      fill_in "Confirmation", with: "password"
      click_button 'Create my account'

      expect(page).to have_css '.alert-danger'
      expect(current_path).to eq signup_path
    end
  end
end
