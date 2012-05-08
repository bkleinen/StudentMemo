require 'spec_helper'

describe "students/edit" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :first => "MyString",
      :last => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    rendered.should have_selector("form", :action => student_path(@student), :method => "post") do |form|
      form.should have_selector("input#student_first", :name => "student[first]")
      form.should have_selector("input#student_last", :name => "student[last]")
    end
  end
end
