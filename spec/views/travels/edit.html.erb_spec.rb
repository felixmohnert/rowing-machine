require 'spec_helper'

describe "travels/edit" do
  before(:each) do
    @travel = assign(:travel, stub_model(Travel,
      :trip_id => 1,
      :rower_id => 1
    ))
  end

  it "renders the edit travel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", travel_path(@travel), "post" do
      assert_select "input#travel_trip_id[name=?]", "travel[trip_id]"
      assert_select "input#travel_rower_id[name=?]", "travel[rower_id]"
    end
  end
end
