require 'spec_helper'

describe "backend/brandnews/edit" do
  before(:each) do
    @backend_brandnew = assign(:backend_brandnew, stub_model(Backend::Brandnew::Car))
  end

  it "renders the edit backend_brandnew form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => backend_brandnew_cars_path(@backend_brandnew), :method => "post" do
    end
  end
end
