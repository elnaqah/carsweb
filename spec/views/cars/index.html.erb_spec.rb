require 'spec_helper'

describe "cars/index" do
  before(:each) do
    assign(:cars, [
      stub_model(Car,
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
      ),
      stub_model(Car,
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
      )
    ])
  end

  it "renders a list of cars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Specs".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Gearbox".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Torque".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
