require 'spec_helper'

describe "brandnew/cars/edit" do
  before(:each) do
    @brandnew_car = assign(:brandnew_car, stub_model(Brandnew::Car))
  end

  it "renders the edit brandnew_car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => brandnew_cars_path(@brandnew_car), :method => "post" do
    end
  end
end
