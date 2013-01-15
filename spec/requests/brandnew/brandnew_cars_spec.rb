require 'spec_helper'

describe "Brandnew::Cars" do
  describe "GET /brandnew_cars" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get brandnew_cars_path
      response.status.should be(200)
    end
  end
end
