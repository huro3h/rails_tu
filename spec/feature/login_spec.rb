require "rails_helper"

feature "loginページ" do
  context 'loginページにアクセスした時' do
    before { visit '/login' }
    scenario 'ログインフォームが表示されていること' do
      expect(page).to have_content 'Log in'
    end

    scenario 'signupページへのリンクが表示されていること' do
      expect(page).to have_link('Sign up now!', href: '/signup')
    end

    scenario 'ログイン失敗の際、ページ遷移によるフラッシュ表示が適切にされていること' do
      fill_in "Email", with: ""
      fill_in "Password", with: ""
      click_button "Log in"
      expect(page).to have_current_path("/login")
      expect(page).to have_css(".alert-danger")
      visit "/"
      expect(page).to_not have_css(".alert-danger")
    end
  end
end
