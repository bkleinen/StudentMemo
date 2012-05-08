require 'spec_helper'

describe "courses/new" do
  before(:each) do
    assign(:course, stub_model(Course,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new course form" do
    render

    rendered.should have_selector("form", :action => courses_path, :method => "post") do |form|
      form.should have_selector("input#course_name", :name => "course[name]")
    end
  end
end
