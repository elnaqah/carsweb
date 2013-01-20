require 'spec_helper'

describe "brandnew/cars/new" do
  before(:each) do
    assign(:brandnew_car, stub_model(Brandnew::Car).as_new_record)
  end

  it "renders new brandnew_car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => brandnew_cars_path, :method => "post" do
    end
  end
end
