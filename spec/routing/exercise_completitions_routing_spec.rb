require "rails_helper"

RSpec.describe ExerciseCompletitionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/exercise_completitions").to route_to("exercise_completitions#index")
    end

    it "routes to #new" do
      expect(get: "/exercise_completitions/new").to route_to("exercise_completitions#new")
    end

    it "routes to #show" do
      expect(get: "/exercise_completitions/1").to route_to("exercise_completitions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/exercise_completitions/1/edit").to route_to("exercise_completitions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/exercise_completitions").to route_to("exercise_completitions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/exercise_completitions/1").to route_to("exercise_completitions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/exercise_completitions/1").to route_to("exercise_completitions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/exercise_completitions/1").to route_to("exercise_completitions#destroy", id: "1")
    end
  end
end
