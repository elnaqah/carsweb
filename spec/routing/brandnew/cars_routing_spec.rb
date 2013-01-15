require "spec_helper"

describe Brandnew::CarsController do
  describe "routing" do

    it "routes to #index" do
      get("/brandnew/cars").should route_to("brandnew/cars#index")
    end

    it "routes to #new" do
      get("/brandnew/cars/new").should route_to("brandnew/cars#new")
    end

    it "routes to #show" do
      get("/brandnew/cars/1").should route_to("brandnew/cars#show", :id => "1")
    end

    it "routes to #edit" do
      get("/brandnew/cars/1/edit").should route_to("brandnew/cars#edit", :id => "1")
    end

    it "routes to #create" do
      post("/brandnew/cars").should route_to("brandnew/cars#create")
    end

    it "routes to #update" do
      put("/brandnew/cars/1").should route_to("brandnew/cars#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/brandnew/cars/1").should route_to("brandnew/cars#destroy", :id => "1")
    end

  end
end
