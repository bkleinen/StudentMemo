require 'spec_helper'

describe "groups/new" do
  before(:each) do
    assign(:group, stub_model(Group,
      :course_id => 1
    ).as_new_record)
  end

  it "renders new group form" do
    render

    rendered.should have_selector("form", :action => groups_path, :method => "post") do |form|
      form.should have_selector("input#group_course_id", :name => "group[course_id]")
    end
  end
end
