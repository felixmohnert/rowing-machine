require 'spec_helper'

describe "trips/edit" do
  before(:each) do
    @trip = assign(:trip, stub_model(Trip,
      :start => "MyString",
      :destination => "MyString",
      :boat_id => 1,
      :travel_id => 1
    ))
  end

  it "renders the edit trip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", trip_path(@trip), "post" do
      assert_select "input#trip_start[name=?]", "trip[start]"
      assert_select "input#trip_destination[name=?]", "trip[destination]"
      assert_select "input#trip_boat_id[name=?]", "trip[boat_id]"
      assert_select "input#trip_travel_id[name=?]", "trip[travel_id]"
    end
  end
end
