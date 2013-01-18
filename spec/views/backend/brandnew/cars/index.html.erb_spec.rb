require 'spec_helper'

describe "backend/brandnews/index" do
  before(:each) do
    assign(:backend_brandnew_cars, [
      stub_model(Backend::Brandnew::Car),
      stub_model(Backend::Brandnew::Car)
    ])
  end

  it "renders a list of backend/brandnews" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
