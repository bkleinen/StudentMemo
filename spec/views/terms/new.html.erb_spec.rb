require 'spec_helper'

describe "terms/new" do
  before(:each) do
    assign(:term, stub_model(Term,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new term form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => terms_path, :method => "post" do
      assert_select "input#term_name", :name => "term[name]"
    end
  end
end
