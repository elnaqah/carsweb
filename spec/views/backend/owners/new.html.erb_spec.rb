require 'spec_helper'

describe "backend/owners/new" do
  before(:each) do
    assign(:backend_owner, stub_model(Backend::Owner,
      :name => "MyString",
      :country => "MyString",
      :city => "MyString"
    ).as_new_record)
  end

  it "renders new backend_owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => backend_owners_path, :method => "post" do
      assert_select "input#backend_owner_name", :name => "backend_owner[name]"
      assert_select "input#backend_owner_country", :name => "backend_owner[country]"
      assert_select "input#backend_owner_city", :name => "backend_owner[city]"
    end
  end
end
