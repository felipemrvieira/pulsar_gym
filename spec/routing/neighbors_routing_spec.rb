require "rails_helper"

RSpec.describe NeighborsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/neighbors").to route_to("neighbors#index")
    end

    it "routes to #new" do
      expect(get: "/neighbors/new").to route_to("neighbors#new")
    end

    it "routes to #show" do
      expect(get: "/neighbors/1").to route_to("neighbors#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/neighbors/1/edit").to route_to("neighbors#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/neighbors").to route_to("neighbors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/neighbors/1").to route_to("neighbors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/neighbors/1").to route_to("neighbors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/neighbors/1").to route_to("neighbors#destroy", id: "1")
    end
  end
end
