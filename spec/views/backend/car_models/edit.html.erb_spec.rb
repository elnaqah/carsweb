require 'spec_helper'

describe "backend/car_models/edit" do
  before(:each) do
    @backend_car_model = assign(:backend_car_model, stub_model(Backend::CarModel,
      :name => "MyString"
    ))
  end

  it "renders the edit backend_car_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => backend_car_models_path(@backend_car_model), :method => "post" do
      assert_select "input#backend_car_model_name", :name => "backend_car_model[name]"
    end
  end
end
