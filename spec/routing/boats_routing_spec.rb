require "spec_helper"

describe BoatsController do
  describe "routing" do

    it "routes to #index" do
      get("/boats").should route_to("boats#index")
    end

    it "routes to #new" do
      get("/boats/new").should route_to("boats#new")
    end

    it "routes to #show" do
      get("/boats/1").should route_to("boats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/boats/1/edit").should route_to("boats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/boats").should route_to("boats#create")
    end

    it "routes to #update" do
      put("/boats/1").should route_to("boats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/boats/1").should route_to("boats#destroy", :id => "1")
    end

  end
end
