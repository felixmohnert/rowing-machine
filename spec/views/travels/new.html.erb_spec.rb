require 'spec_helper'

describe "travels/new" do
  before(:each) do
    assign(:travel, stub_model(Travel,
      :trip_id => 1,
      :rower_id => 1
    ).as_new_record)
  end

  it "renders new travel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", travels_path, "post" do
      assert_select "input#travel_trip_id[name=?]", "travel[trip_id]"
      assert_select "input#travel_rower_id[name=?]", "travel[rower_id]"
    end
  end
end
