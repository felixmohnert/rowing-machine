require 'spec_helper'

describe "boats/index" do
  before(:each) do
    assign(:boats, [
      stub_model(Boat,
        :title => "Title",
        :coxed => false,
        :seats => 1
      ),
      stub_model(Boat,
        :title => "Title",
        :coxed => false,
        :seats => 1
      )
    ])
  end

  it "renders a list of boats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
