require 'spec_helper'

describe "boats/show" do
  before(:each) do
    @boat = assign(:boat, stub_model(Boat,
      :title => "Title",
      :coxed => false,
      :seats => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/false/)
    rendered.should match(/1/)
  end
end
