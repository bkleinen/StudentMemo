require 'spec_helper'

describe "students/index" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :first => "First",
        :last => "Last"
      ),
      stub_model(Student,
        :first => "First",
        :last => "Last"
      )
    ])
  end

  it "renders a list of students" do
    render
    rendered.should have_selector("tr>td", :content => "First".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Last".to_s, :count => 2)
  end
end
