require 'spec_helper'

describe "trips/index" do
  before(:each) do
    assign(:trips, [
      stub_model(Trip,
        :start => "Start",
        :destination => "Destination",
        :boat_id => 1,
        :travel_id => 2
      ),
      stub_model(Trip,
        :start => "Start",
        :destination => "Destination",
        :boat_id => 1,
        :travel_id => 2
      )
    ])
  end

  it "renders a list of trips" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Start".to_s, :count => 2
    assert_select "tr>td", :text => "Destination".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
