require 'spec_helper'

describe "rowers/new" do
  before(:each) do
    assign(:rower, stub_model(Rower,
      :name => "MyString",
      :address => "MyString",
      :zip => 1,
      :city => "MyString"
    ).as_new_record)
  end

  it "renders new rower form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rowers_path, "post" do
      assert_select "input#rower_name[name=?]", "rower[name]"
      assert_select "input#rower_address[name=?]", "rower[address]"
      assert_select "input#rower_zip[name=?]", "rower[zip]"
      assert_select "input#rower_city[name=?]", "rower[city]"
    end
  end
end
