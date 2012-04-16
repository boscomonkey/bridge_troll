require 'spec_helper'

describe "EventPermissions" do
  describe "GET /event_permissions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get event_permissions_path
      response.status.should be(200)
    end
  end
end
