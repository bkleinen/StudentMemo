require 'spec_helper'

describe "students/show" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :first => "First",
      :last => "Last"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("First".to_s)
    rendered.should contain("Last".to_s)
  end
end
