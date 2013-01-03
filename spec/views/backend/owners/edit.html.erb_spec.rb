require 'spec_helper'

describe "backend/owners/edit" do
  before(:each) do
    @backend_owner = assign(:backend_owner, stub_model(Backend::Owner,
      :name => "MyString",
      :country => "MyString",
      :city => "MyString"
    ))
  end

  it "renders the edit backend_owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => backend_owners_path(@backend_owner), :method => "post" do
      assert_select "input#backend_owner_name", :name => "backend_owner[name]"
      assert_select "input#backend_owner_country", :name => "backend_owner[country]"
      assert_select "input#backend_owner_city", :name => "backend_owner[city]"
    end
  end
end
