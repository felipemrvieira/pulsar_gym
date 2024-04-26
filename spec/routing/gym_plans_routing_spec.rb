require "rails_helper"

RSpec.describe GymPlansController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/gym_plans").to route_to("gym_plans#index")
    end

    it "routes to #new" do
      expect(get: "/gym_plans/new").to route_to("gym_plans#new")
    end

    it "routes to #show" do
      expect(get: "/gym_plans/1").to route_to("gym_plans#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/gym_plans/1/edit").to route_to("gym_plans#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/gym_plans").to route_to("gym_plans#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/gym_plans/1").to route_to("gym_plans#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/gym_plans/1").to route_to("gym_plans#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/gym_plans/1").to route_to("gym_plans#destroy", id: "1")
    end
  end
end
