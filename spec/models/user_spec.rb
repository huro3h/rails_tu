require 'rails_helper'

describe User do
  let!(:user) { build(:user) }
  it 'Userモデルを正しく作成できること' do
    expect(user).to be_valid
  end
end
