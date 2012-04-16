require 'spec_helper'

describe "event_permissions/index" do
  before(:each) do
    assign(:event_permissions, [
      stub_model(EventPermission,
        :user_id => 1,
        :event_id => 1,
        :role => "Role"
      ),
      stub_model(EventPermission,
        :user_id => 1,
        :event_id => 1,
        :role => "Role"
      )
    ])
  end

  it "renders a list of event_permissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Role".to_s, :count => 2
  end
end
