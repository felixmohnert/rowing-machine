require 'spec_helper'

describe "boats/edit" do
  before(:each) do
    @boat = assign(:boat, stub_model(Boat,
      :title => "MyString",
      :coxed => false,
      :seats => 1
    ))
  end

  it "renders the edit boat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", boat_path(@boat), "post" do
      assert_select "input#boat_title[name=?]", "boat[title]"
      assert_select "input#boat_coxed[name=?]", "boat[coxed]"
      assert_select "input#boat_seats[name=?]", "boat[seats]"
    end
  end
end
