require 'spec_helper'

describe "trips/show" do
  before(:each) do
    @trip = assign(:trip, stub_model(Trip,
      :start => "Start",
      :destination => "Destination",
      :boat_id => 1,
      :travel_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Start/)
    rendered.should match(/Destination/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
