require 'spec_helper'

describe "owners/index" do
  before(:each) do
    assign(:owners, [
      stub_model(Owner,
        :name => "Name",
        :tele_number => "Tele Number",
        :country => "Country",
        :city => "City"
      ),
      stub_model(Owner,
        :name => "Name",
        :tele_number => "Tele Number",
        :country => "Country",
        :city => "City"
      )
    ])
  end

  it "renders a list of owners" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Tele Number".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
  end
end
