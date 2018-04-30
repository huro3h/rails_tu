require 'rails_helper'

describe User do
  let(:user) { build(:user) }
  let(:user_no_name) { build(:user, :nil_name) }
  let(:user_no_email) { build(:user, :nil_email) }

  it '名前とemailに値があれば有効であること' do
    expect(user).to be_valid
  end

  it '名前は必須項目であること' do
    expect(user_no_name).to be_invalid
  end

  it 'emailは必須項目であること' do
    expect(user_no_email).to be_invalid
  end
end
