require 'rails_helper'

describe ApplicationHelper do
  describe "#displayed_title" do
    let(:empty_title) { "" }
    let(:define_title) { "Home" }
    it "titleが設定されていなければデフォルトの値を返すこと" do
      expect(displayed_title(empty_title)).to eq "rails_tu"
    end

    it "titleが設定されていれば専用の値を返すこと" do
      expect(displayed_title(define_title)).to eq "Home | rails_tu"
    end
  end
end
