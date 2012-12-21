require 'spec_helper'

describe "owners/show" do
  before(:each) do
    @owner = assign(:owner, stub_model(Owner,
      :name => "Name",
      :tele_number => "Tele Number",
      :country => "Country",
      :city => "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Tele Number/)
    rendered.should match(/Country/)
    rendered.should match(/City/)
  end
end
