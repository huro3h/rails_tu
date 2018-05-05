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

  it '255文字以下のメールアドレスは有効であること' do
    user.email = "a" * 243 + "@example.com"
    expect(user.save).to eq true
  end

  it '256文字以上のメールアドレスは無効であること' do
    user.email = "a" * 244 + "@example.com"
    expect(user.save).to eq false
  end

  it '定形に沿わないメールアドレスは無効であること' do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      user.email = invalid_address
      expect(user.save).to eq false
    end
  end

  it '重複したメールアドレスは無効であること' do
    duplicate_user = user.dup
    duplicate_user.email = duplicate_user.email.upcase
    user.save
    expect(duplicate_user.save).to eq false
  end

  it 'ユーザー作成時、メールアドレスは小文字に変換されること' do
    user.email = "FOO@EXAMPLE.COM"
    user.save
    expect(user.email).to eq "foo@example.com"
  end

  it 'パスワードは必須項目であること' do
    user.password = ""
    user.password_confirmation = ""
    expect(user.save).to eq false
  end

  it '8文字以下のパスワードは無効であること' do
    user.password = "pass"
    expect(user.save).to eq false
  end
end
