require "spec_helper"

describe Backend::OwnersController do
  describe "routing" do

    it "routes to #index" do
      get("/backend/owners").should route_to("backend/owners#index")
    end

    it "routes to #new" do
      get("/backend/owners/new").should route_to("backend/owners#new")
    end

    it "routes to #show" do
      get("/backend/owners/1").should route_to("backend/owners#show", :id => "1")
    end

    it "routes to #edit" do
      get("/backend/owners/1/edit").should route_to("backend/owners#edit", :id => "1")
    end

    it "routes to #create" do
      post("/backend/owners").should route_to("backend/owners#create")
    end

    it "routes to #update" do
      put("/backend/owners/1").should route_to("backend/owners#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/backend/owners/1").should route_to("backend/owners#destroy", :id => "1")
    end

  end
end
