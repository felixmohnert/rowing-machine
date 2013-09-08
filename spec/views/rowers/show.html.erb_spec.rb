require 'spec_helper'

describe "rowers/show" do
  before(:each) do
    @rower = assign(:rower, stub_model(Rower,
      :name => "Name",
      :address => "Address",
      :zip => 1,
      :city => "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Address/)
    rendered.should match(/1/)
    rendered.should match(/City/)
  end
end
