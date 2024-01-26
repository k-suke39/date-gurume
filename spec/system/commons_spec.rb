require 'rails_helper'

RSpec.describe "Commons", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe '共通系' do
    before { visit '/'}
    context 'ヘッダー' do
      it "正常に表示される" do
        expect(page).to have_content('ダテグルメ')
        expect(page).to have_content('ログイン')
        expect(page).to have_content('新規登録')
      end
    end

    context 'フッター' do
      it "正常に表示される" do
        expect(page).to have_content('ダテグルメ')
        expect(page).to have_content('利用規約')
        expect(page).to have_content('プライバシーポリシー')
        expect(page).to have_content('お問い合わせ')
      end
    end
  end
end
