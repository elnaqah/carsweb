require "spec_helper"

describe Backend::CarsController do
  describe "routing" do

    it "routes to #index" do
      get("/backend/cars").should route_to("backend/cars#index")
    end

    it "routes to #new" do
      get("/backend/cars/new").should route_to("backend/cars#new")
    end

    it "routes to #show" do
      get("/backend/cars/1").should route_to("backend/cars#show", :id => "1")
    end

    it "routes to #edit" do
      get("/backend/cars/1/edit").should route_to("backend/cars#edit", :id => "1")
    end

    it "routes to #create" do
      post("/backend/cars").should route_to("backend/cars#create")
    end

    it "routes to #update" do
      put("/backend/cars/1").should route_to("backend/cars#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/backend/cars/1").should route_to("backend/cars#destroy", :id => "1")
    end

  end
end
