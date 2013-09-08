require 'spec_helper'

describe "rowers/index" do
  before(:each) do
    assign(:rowers, [
      stub_model(Rower,
        :name => "Name",
        :address => "Address",
        :zip => 1,
        :city => "City"
      ),
      stub_model(Rower,
        :name => "Name",
        :address => "Address",
        :zip => 1,
        :city => "City"
      )
    ])
  end

  it "renders a list of rowers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
  end
end
