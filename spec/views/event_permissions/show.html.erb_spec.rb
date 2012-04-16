require 'spec_helper'

describe "event_permissions/show" do
  before(:each) do
    @event_permission = assign(:event_permission, stub_model(EventPermission,
      :user_id => 1,
      :event_id => 1,
      :role => "Role"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Role/)
  end
end
