require "spec_helper"

describe RowersController do
  describe "routing" do

    it "routes to #index" do
      get("/rowers").should route_to("rowers#index")
    end

    it "routes to #new" do
      get("/rowers/new").should route_to("rowers#new")
    end

    it "routes to #show" do
      get("/rowers/1").should route_to("rowers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rowers/1/edit").should route_to("rowers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rowers").should route_to("rowers#create")
    end

    it "routes to #update" do
      put("/rowers/1").should route_to("rowers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rowers/1").should route_to("rowers#destroy", :id => "1")
    end

  end
end
