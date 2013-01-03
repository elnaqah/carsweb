require "spec_helper"

describe Backend::CarModelsController do
  describe "routing" do

    it "routes to #index" do
      get("/backend/car_models").should route_to("backend/car_models#index")
    end

    it "routes to #new" do
      get("/backend/car_models/new").should route_to("backend/car_models#new")
    end

    it "routes to #show" do
      get("/backend/car_models/1").should route_to("backend/car_models#show", :id => "1")
    end

    it "routes to #edit" do
      get("/backend/car_models/1/edit").should route_to("backend/car_models#edit", :id => "1")
    end

    it "routes to #create" do
      post("/backend/car_models").should route_to("backend/car_models#create")
    end

    it "routes to #update" do
      put("/backend/car_models/1").should route_to("backend/car_models#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/backend/car_models/1").should route_to("backend/car_models#destroy", :id => "1")
    end

  end
end
