require "rails_helper"

feature "loginページ" do
  context 'loginページにアクセスした時' do
    before { visit '/login' }
    scenario 'ログインフォームが表示されていること' do
      expect(page).to have_content 'Log in'
    end
  end
end
