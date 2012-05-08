require 'spec_helper'

describe "groups/edit" do
  before(:each) do
    @group = assign(:group, stub_model(Group,
      :course_id => 1
    ))
  end

  it "renders the edit group form" do
    render

    rendered.should have_selector("form", :action => group_path(@group), :method => "post") do |form|
      form.should have_selector("input#group_course_id", :name => "group[course_id]")
    end
  end
end
