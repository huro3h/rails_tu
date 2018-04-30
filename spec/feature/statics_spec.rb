require "rails_helper"

feature "staticsページ" do
  context 'statics各ページにアクセスした時' do

    scenario 'タイトル及び公式homeへのリンクが表示されていること' do
      visit 'statics/home'
      expect(page).to have_content "Rails_tu statics/home"
      expect(page).to have_selector 'a', text: 'rails_tu'
    end

    scenario 'タイトル及び公式help/ebookへのリンクが表示されていること' do
      visit 'statics/help'
      expect(page).to have_content "Rails_tu statics/help"
      expect(page).to have_content "公式help"
      expect(page).to have_content "公式ebook"
      expect(page).to have_selector 'a', text: 'Rails_tu_help'
      expect(page).to have_selector 'a', text: 'Rails_tu_ebook'
    end
  end
end