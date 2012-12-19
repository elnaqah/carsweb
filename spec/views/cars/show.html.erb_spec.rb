require 'spec_helper'

describe "cars/show" do
  before(:each) do
    @car = assign(:car, stub_model(Car,
      :model => "Model",
      :specs => "Specs",
      :engin_size => 1,
      :gearbox => "Gearbox",
      :shifts => 2,
      :type => "Type",
      :cylinders => 3,
      :valves => 4,
      :injection => false,
      :torque => "Torque",
      :hourse_power => 5,
      :drive_wheels => false,
      :seats => 6,
      :doors => 7,
      :fuel_consumption => 1.5,
      :fuel_tank => 8,
      :air_bags => false,
      :air_bags_front => false,
      :electric_seat => false,
      :abs => false,
      :ebd => false,
      :esp => false,
      :alarm => false,
      :tier_size => 9,
      :front_fog_light => false,
      :rear_fog_light => false,
      :electric_mirrors => false,
      :electric_windows => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Model/)
    rendered.should match(/Specs/)
    rendered.should match(/1/)
    rendered.should match(/Gearbox/)
    rendered.should match(/2/)
    rendered.should match(/Type/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/false/)
    rendered.should match(/Torque/)
    rendered.should match(/5/)
    rendered.should match(/false/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/1.5/)
    rendered.should match(/8/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/9/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
