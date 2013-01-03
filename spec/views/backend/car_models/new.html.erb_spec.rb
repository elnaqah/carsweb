require 'spec_helper'

describe "backend/car_models/new" do
  before(:each) do
    assign(:backend_car_model, stub_model(Backend::CarModel,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new backend_car_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => backend_car_models_path, :method => "post" do
      assert_select "input#backend_car_model_name", :name => "backend_car_model[name]"
    end
  end
end
