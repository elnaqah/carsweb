require 'spec_helper'

describe "brandnew/cars/index" do
  before(:each) do
    assign(:brandnew_cars, [
      stub_model(Brandnew::Car),
      stub_model(Brandnew::Car)
    ])
  end

  it "renders a list of brandnew/cars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
