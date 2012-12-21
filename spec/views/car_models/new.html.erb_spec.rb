require 'spec_helper'

describe "car_models/new" do
  before(:each) do
    assign(:car_model, stub_model(CarModel,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new car_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => car_models_path, :method => "post" do
      assert_select "input#car_model_name", :name => "car_model[name]"
    end
  end
end
