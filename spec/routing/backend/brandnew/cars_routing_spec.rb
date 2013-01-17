require "spec_helper"

describe Backend::Brandnew::CarsController do
  describe "routing" do

    it "routes to #index" do
      get("/backend/brandnews").should route_to("backend/brandnews#index")
    end

    it "routes to #new" do
      get("/backend/brandnews/new").should route_to("backend/brandnews#new")
    end

    it "routes to #show" do
      get("/backend/brandnews/1").should route_to("backend/brandnews#show", :id => "1")
    end

    it "routes to #edit" do
      get("/backend/brandnews/1/edit").should route_to("backend/brandnews#edit", :id => "1")
    end

    it "routes to #create" do
      post("/backend/brandnews").should route_to("backend/brandnews#create")
    end

    it "routes to #update" do
      put("/backend/brandnews/1").should route_to("backend/brandnews#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/backend/brandnews/1").should route_to("backend/brandnews#destroy", :id => "1")
    end

  end
end
