require 'spec_helper'

describe "event_permissions/new" do
  before(:each) do
    assign(:event_permission, stub_model(EventPermission,
      :user_id => 1,
      :event_id => 1,
      :role => "MyString"
    ).as_new_record)
  end

  it "renders new event_permission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => event_permissions_path, :method => "post" do
      assert_select "input#event_permission_user_id", :name => "event_permission[user_id]"
      assert_select "input#event_permission_event_id", :name => "event_permission[event_id]"
      assert_select "input#event_permission_role", :name => "event_permission[role]"
    end
  end
end
