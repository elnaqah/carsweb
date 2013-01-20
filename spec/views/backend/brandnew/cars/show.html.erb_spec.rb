require 'spec_helper'

describe "backend/brandnews/show" do
  before(:each) do
    @backend_brandnew = assign(:backend_brandnew, stub_model(Backend::Brandnew::Car))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
