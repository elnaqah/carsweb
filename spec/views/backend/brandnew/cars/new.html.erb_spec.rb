require 'spec_helper'

describe "backend/brandnews/new" do
  before(:each) do
    assign(:backend_brandnew, stub_model(Backend::Brandnew::Car).as_new_record)
  end

  it "renders new backend_brandnew form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => backend_brandnew_cars_path, :method => "post" do
    end
  end
end
