require 'spec_helper'

describe "brandnew/cars/show" do
  before(:each) do
    @brandnew_car = assign(:brandnew_car, stub_model(Brandnew::Car))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
