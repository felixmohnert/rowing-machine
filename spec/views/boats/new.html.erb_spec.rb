require 'spec_helper'

describe "boats/new" do
  before(:each) do
    assign(:boat, stub_model(Boat,
      :title => "MyString",
      :coxed => false,
      :seats => 1
    ).as_new_record)
  end

  it "renders new boat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", boats_path, "post" do
      assert_select "input#boat_title[name=?]", "boat[title]"
      assert_select "input#boat_coxed[name=?]", "boat[coxed]"
      assert_select "input#boat_seats[name=?]", "boat[seats]"
    end
  end
end
