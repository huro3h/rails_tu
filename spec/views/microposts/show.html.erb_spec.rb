require 'rails_helper'

RSpec.describe "microposts/show", type: :view do
  before(:each) do
    user = User.create(email: 'aaa@sample.com')
    @micropost = assign(:micropost, Micropost.create!(
      content: "MyText",
      user_id: user.id
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
