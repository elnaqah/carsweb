require 'spec_helper'

describe "backend/owners/show" do
  before(:each) do
    @backend_owner = assign(:backend_owner, stub_model(Backend::Owner,
      :name => "Name",
      :country => "Country",
      :city => "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Country/)
    rendered.should match(/City/)
  end
end
