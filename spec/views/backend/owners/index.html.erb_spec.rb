require 'spec_helper'

describe "backend/owners/index" do
  before(:each) do
    assign(:backend_owners, [
      stub_model(Backend::Owner,
        :name => "Name",
        :country => "Country",
        :city => "City"
      ),
      stub_model(Backend::Owner,
        :name => "Name",
        :country => "Country",
        :city => "City"
      )
    ])
  end

  it "renders a list of backend/owners" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
  end
end
