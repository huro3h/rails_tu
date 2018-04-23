require "rails_helper"

feature "rootページ" do
  context 'rootページにアクセスしたら' do
    scenario 'Hello~ の文言が表示されていること' do
      visit "/"
      expect(page).to have_content "Hello, Rails 5.2"
    end
  end
end