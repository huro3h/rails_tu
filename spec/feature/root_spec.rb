require "rails_helper"

feature "rootページ" do
  context 'rootページにアクセスしたら' do
    before { visit "/" }
    scenario 'Hello~ の文言が表示されていないこと' do
      expect(page).to_not have_content "Hello, Rails 5.2"
    end

    scenario 'users#indexページへ遷移すること' do
      expect(page).to have_content "Users"
    end
  end
end