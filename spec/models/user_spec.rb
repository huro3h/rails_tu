require 'rails_helper'

describe User do
  let!(:user) { User.new(email: 'a@example.com', name: 'test') }
  it 'Userモデルを正しく作成できること' do
    expect(user).to be_valid
  end
end
