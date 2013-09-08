require 'spec_helper'

describe "rowers/edit" do
  before(:each) do
    @rower = assign(:rower, stub_model(Rower,
      :name => "MyString",
      :address => "MyString",
      :zip => 1,
      :city => "MyString"
    ))
  end

  it "renders the edit rower form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rower_path(@rower), "post" do
      assert_select "input#rower_name[name=?]", "rower[name]"
      assert_select "input#rower_address[name=?]", "rower[address]"
      assert_select "input#rower_zip[name=?]", "rower[zip]"
      assert_select "input#rower_city[name=?]", "rower[city]"
    end
  end
end
