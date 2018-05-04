require "rails_helper"

feature "rootページ" do
  context 'rootページにアクセスした時' do
    before { visit "/" }
    scenario 'Hello~ の文言が表示されていないこと' do
      expect(page).to_not have_content "Hello, Rails 5.2"
    end

    scenario 'statics#homeページへ遷移すること' do
      expect(page).to have_content "Rails_tu statics/home"
    end

    scenario 'signupページへのリンクが表示されていること' do
      expect(page).to have_link('Sign up now!', href: '/signup')
    end
  end
end
