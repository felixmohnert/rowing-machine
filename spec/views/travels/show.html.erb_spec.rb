require 'spec_helper'

describe "travels/show" do
  before(:each) do
    @travel = assign(:travel, stub_model(Travel,
      :trip_id => 1,
      :rower_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
