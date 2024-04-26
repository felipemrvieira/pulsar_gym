require "rails_helper"

RSpec.describe ExaminationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/examinations").to route_to("examinations#index")
    end

    it "routes to #new" do
      expect(get: "/examinations/new").to route_to("examinations#new")
    end

    it "routes to #show" do
      expect(get: "/examinations/1").to route_to("examinations#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/examinations/1/edit").to route_to("examinations#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/examinations").to route_to("examinations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/examinations/1").to route_to("examinations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/examinations/1").to route_to("examinations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/examinations/1").to route_to("examinations#destroy", id: "1")
    end
  end
end
