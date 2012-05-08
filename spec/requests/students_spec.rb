require 'spec_helper'

describe "Students" do
  describe "GET /students" do
    it "works! (now write some real specs)" do
      visit students_path
      response.status.should be(200)
    end
  end
end
