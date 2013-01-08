require 'spec_helper'

describe "backend/car_models/show" do
  before(:each) do
    @backend_car_model = assign(:backend_car_model, stub_model(Backend::CarModel,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
