require 'spec_helper'

describe "backend/cars/index" do
  before(:each) do
    assign(:backend_cars, [
      stub_model(Backend::Car,
        :cylinders => 1,
        :horse_power => 2,
        :doors => 3,
        :air_bags => false,
        :abs => false,
        :price => 4
      ),
      stub_model(Backend::Car,
        :cylinders => 1,
        :horse_power => 2,
        :doors => 3,
        :air_bags => false,
        :abs => false,
        :price => 4
      )
    ])
  end

  it "renders a list of backend/cars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
