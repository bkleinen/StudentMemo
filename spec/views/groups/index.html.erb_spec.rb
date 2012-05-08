require 'spec_helper'

describe "groups/index" do
  before(:each) do
    assign(:groups, [
      stub_model(Group,
        :course_id => 1
      ),
      stub_model(Group,
        :course_id => 1
      )
    ])
  end

  it "renders a list of groups" do
    render
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
