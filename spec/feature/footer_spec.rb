require "rails_helper"

feature "footer" do
  context 'Homeにアクセスした時フッター部分に' do
    before { visit "/" }
    scenario 'Ruby on Rails Tutorialへのリンクが表示されていること' do
      within(:css, '.footer') do
        expect(page).to have_selector 'a', text: 'Ruby on Rails Tutorial'
      end
    end

    scenario 'Michael Hartlへのリンクが表示されていること' do
      within(:css, '.footer') do
        expect(page).to have_selector 'a', text: 'Michael Hartl'
      end
    end

    scenario 'aboutページへのリンクが表示されていること' do
      within(:css, '.footer') do
        expect(page).to have_selector 'a', text: 'About'
      end
    end

    scenario 'contactページへのリンクが表示されていること' do
      within(:css, '.footer') do
        expect(page).to have_selector 'a', text: 'Contact'
      end
    end

    scenario 'Newsページへのリンクが表示されていること' do
      within(:css, '.footer') do
        expect(page).to have_selector 'a', text: 'News'
      end
    end
  end
end
