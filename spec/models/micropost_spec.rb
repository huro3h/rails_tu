require 'rails_helper'

describe Micropost do
  describe 'content' do
    let(:within140) { Micropost.new(content: 'a' * 140) }
    let(:over141) { Micropost.new(content: 'a' * 141) }

    it '140文字以下の値は有効であること' do
      expect(within140).to be_valid
    end

    it '141文字以上の値は有効でないこと' do
      expect(over141).to_not be_valid
    end
  end
end
