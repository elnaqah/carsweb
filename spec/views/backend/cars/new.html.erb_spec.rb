require 'spec_helper'

describe "backend/cars/new" do
  before(:each) do
    assign(:backend_car, stub_model(Backend::Car,
      :cylinders => 1,
      :horse_power => 1,
      :doors => 1,
      :air_bags => false,
      :abs => false,
      :price => 1
    ).as_new_record)
  end

  it "renders new backend_car form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => backend_cars_path, :method => "post" do
      assert_select "input#backend_car_cylinders", :name => "backend_car[cylinders]"
      assert_select "input#backend_car_horse_power", :name => "backend_car[horse_power]"
      assert_select "input#backend_car_doors", :name => "backend_car[doors]"
      assert_select "input#backend_car_air_bags", :name => "backend_car[air_bags]"
      assert_select "input#backend_car_abs", :name => "backend_car[abs]"
      assert_select "input#backend_car_price", :name => "backend_car[price]"
    end
  end
end
