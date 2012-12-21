require 'spec_helper'

describe "owners/edit" do
  before(:each) do
    @owner = assign(:owner, stub_model(Owner,
      :name => "MyString",
      :tele_number => "MyString",
      :country => "MyString",
      :city => "MyString"
    ))
  end

  it "renders the edit owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => owners_path(@owner), :method => "post" do
      assert_select "input#owner_name", :name => "owner[name]"
      assert_select "input#owner_tele_number", :name => "owner[tele_number]"
      assert_select "input#owner_country", :name => "owner[country]"
      assert_select "input#owner_city", :name => "owner[city]"
    end
  end
end
