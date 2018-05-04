require "rails_helper"

feature "staticsページ" do
  context 'statics各ページにアクセスした時' do

    scenario 'タイトル及び公式help/ebookへのリンクが表示されていること' do
      visit '/help'
      expect(page).to have_content "Rails_tu statics/help"
      expect(page).to have_content "公式help"
      expect(page).to have_content "公式ebook"
      expect(page).to have_selector 'a', text: 'Rails_tu_help'
      expect(page).to have_selector 'a', text: 'Rails_tu_ebook'
    end

    scenario 'aboutページにタイトル,各リンクが表示されていること' do
      visit '/about'
      expect(page).to have_content 'Rails_tu statics/about'
      expect(page).to have_content "公式root"
      expect(page).to have_content "公式help"
      expect(page).to have_content "公式ebook"
    end

    scenario 'contactページに正しいタイトル, リンクが表示されていること' do
      visit '/contact'
      expect(page).to have_title "contact | rails_tu"
      expect(page).to have_selector 'a', text: '公式contact'
    end
  end
end
