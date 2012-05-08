require 'spec_helper'

describe "courses/edit" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :name => "MyString"
    ))
  end

  it "renders the edit course form" do
    render

    rendered.should have_selector("form", :action => course_path(@course), :method => "post") do |form|
      form.should have_selector("input#course_name", :name => "course[name]")
    end
  end
end
