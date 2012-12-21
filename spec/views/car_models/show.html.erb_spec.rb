require 'spec_helper'

describe "car_models/show" do
  before(:each) do
    @car_model = assign(:car_model, stub_model(CarModel,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
