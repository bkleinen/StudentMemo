require 'spec_helper'

describe "Courses" do
  describe "GET /courses" do
    it "works! (now write some real specs)" do
      visit courses_path
      response.status.should be(200)
    end
  end
end
