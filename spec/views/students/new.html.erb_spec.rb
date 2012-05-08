require 'spec_helper'

describe "students/new" do
  before(:each) do
    assign(:student, stub_model(Student,
      :first => "MyString",
      :last => "MyString"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    rendered.should have_selector("form", :action => students_path, :method => "post") do |form|
      form.should have_selector("input#student_first", :name => "student[first]")
      form.should have_selector("input#student_last", :name => "student[last]")
    end
  end
end
