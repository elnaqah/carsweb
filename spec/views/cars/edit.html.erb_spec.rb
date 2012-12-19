require 'spec_helper'

describe "cars/edit" do
  before(:each) do
    @car = assign(:car, stub_model(Car,
      :model => "MyString",
      :specs => "MyString",
      :engin_size => 1,
      :gearbox => "MyString",
      :shifts => 1,
      :type => "",
      :cylinders => 1,
      :valves => 1,
      :injection => false,
      :torque => "MyString",
      :hourse_power => 1,
      :drive_wheels => false,
      :seats => 1,
      :doors => 1,
      :fuel_consumption => 1.5,
      :fuel_tank => 1,
      :air_bags => false,
      :air_bags_front => false,
      :electric_seat => false,
      :abs => false,
      :ebd => false,
      :esp => false,
      :alarm => false,
      :tier_size => 1,
      :front_fog_light => false,
      :rear_fog_light => false,
      :electric_mirrors => false,
      :electric_windows => false
    ))
  end

  it "renders the edit car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cars_path(@car), :method => "post" do
      assert_select "input#car_model", :name => "car[model]"
      assert_select "input#car_specs", :name => "car[specs]"
      assert_select "input#car_engin_size", :name => "car[engin_size]"
      assert_select "input#car_gearbox", :name => "car[gearbox]"
      assert_select "input#car_shifts", :name => "car[shifts]"
      assert_select "input#car_type", :name => "car[type]"
      assert_select "input#car_cylinders", :name => "car[cylinders]"
      assert_select "input#car_valves", :name => "car[valves]"
      assert_select "input#car_injection", :name => "car[injection]"
      assert_select "input#car_torque", :name => "car[torque]"
      assert_select "input#car_hourse_power", :name => "car[hourse_power]"
      assert_select "input#car_drive_wheels", :name => "car[drive_wheels]"
      assert_select "input#car_seats", :name => "car[seats]"
      assert_select "input#car_doors", :name => "car[doors]"
      assert_select "input#car_fuel_consumption", :name => "car[fuel_consumption]"
      assert_select "input#car_fuel_tank", :name => "car[fuel_tank]"
      assert_select "input#car_air_bags", :name => "car[air_bags]"
      assert_select "input#car_air_bags_front", :name => "car[air_bags_front]"
      assert_select "input#car_electric_seat", :name => "car[electric_seat]"
      assert_select "input#car_abs", :name => "car[abs]"
      assert_select "input#car_ebd", :name => "car[ebd]"
      assert_select "input#car_esp", :name => "car[esp]"
      assert_select "input#car_alarm", :name => "car[alarm]"
      assert_select "input#car_tier_size", :name => "car[tier_size]"
      assert_select "input#car_front_fog_light", :name => "car[front_fog_light]"
      assert_select "input#car_rear_fog_light", :name => "car[rear_fog_light]"
      assert_select "input#car_electric_mirrors", :name => "car[electric_mirrors]"
      assert_select "input#car_electric_windows", :name => "car[electric_windows]"
    end
  end
end
