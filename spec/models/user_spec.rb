require 'rails_helper'

describe User do
  let(:user) { build(:user) }
  let(:user_no_name) { build(:user, :nil_name) }
  let(:user_no_email) { build(:user, :nil_email) }

  it '名前とemailに値があれば有効であること' do
    expect(user.save).to eq true
  end

  it '名前は必須項目であること' do
    expect(user_no_name.save).to eq false
  end

  it 'emailは必須項目であること' do
    expect(user_no_email.save).to eq false
  end

  it '50文字以下の名前は有効であること' do
    user.name = "a" * 50
    expect(user.save).to eq true
  end

  it '51文字以上の名前は有効でないこと' do
    user.name = "a" * 51
    expect(user.save).to eq false
  end

  it '255文字以下のemailは有効であること' do
    user.email = "a" * 243 + "@example.com"
    expect(user.save).to eq true
  end

  it '256文字以上のemailは有効でないこと' do
    user.email = "a" * 244 + "@example.com"
    expect(user.save).to eq false
  end
end
