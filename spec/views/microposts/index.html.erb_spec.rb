require 'rails_helper'

describe "microposts/index" do
  post_user = User.create!(email: 'aaa@sample.com')

  before(:each) do
    assign(:microposts, [
      Micropost.create!(
        content: "MyText",
        user_id: post_user.id
      ),
      Micropost.create!(
        content: "MyText",
        user_id: post_user.id
      )
    ])
  end

  it "ユーザーIDと投稿内容が2件ずつ表示されていること" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: post_user.id.to_s, count: 2
  end
end
