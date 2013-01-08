require 'spec_helper'

describe "backend/cars/show" do
  before(:each) do
    @backend_car = assign(:backend_car, stub_model(Backend::Car,
      :cylinders => 1,
      :horse_power => 2,
      :doors => 3,
      :air_bags => false,
      :abs => false,
      :price => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/4/)
  end
end
