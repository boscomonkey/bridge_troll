require "spec_helper"

describe EventPermissionsController do
  describe "routing" do

    it "routes to #index" do
      get("/event_permissions").should route_to("event_permissions#index")
    end

    it "routes to #new" do
      get("/event_permissions/new").should route_to("event_permissions#new")
    end

    it "routes to #show" do
      get("/event_permissions/1").should route_to("event_permissions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/event_permissions/1/edit").should route_to("event_permissions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/event_permissions").should route_to("event_permissions#create")
    end

    it "routes to #update" do
      put("/event_permissions/1").should route_to("event_permissions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/event_permissions/1").should route_to("event_permissions#destroy", :id => "1")
    end

  end
end
