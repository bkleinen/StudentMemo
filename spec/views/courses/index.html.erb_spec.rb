require 'spec_helper'

describe "courses/index" do
  before(:each) do
    assign(:courses, [
      stub_model(Course,
        :name => "Name"
      ),
      stub_model(Course,
        :name => "Name"
      )
    ])
  end

  it "renders a list of courses" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
  end
end
