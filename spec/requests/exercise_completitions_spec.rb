require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/exercise_completitions", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # ExerciseCompletition. As you add validations to ExerciseCompletition, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ExerciseCompletition.create! valid_attributes
      get exercise_completitions_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      exercise_completition = ExerciseCompletition.create! valid_attributes
      get exercise_completition_url(exercise_completition)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_exercise_completition_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      exercise_completition = ExerciseCompletition.create! valid_attributes
      get edit_exercise_completition_url(exercise_completition)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ExerciseCompletition" do
        expect {
          post exercise_completitions_url, params: { exercise_completition: valid_attributes }
        }.to change(ExerciseCompletition, :count).by(1)
      end

      it "redirects to the created exercise_completition" do
        post exercise_completitions_url, params: { exercise_completition: valid_attributes }
        expect(response).to redirect_to(exercise_completition_url(ExerciseCompletition.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ExerciseCompletition" do
        expect {
          post exercise_completitions_url, params: { exercise_completition: invalid_attributes }
        }.to change(ExerciseCompletition, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post exercise_completitions_url, params: { exercise_completition: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested exercise_completition" do
        exercise_completition = ExerciseCompletition.create! valid_attributes
        patch exercise_completition_url(exercise_completition), params: { exercise_completition: new_attributes }
        exercise_completition.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the exercise_completition" do
        exercise_completition = ExerciseCompletition.create! valid_attributes
        patch exercise_completition_url(exercise_completition), params: { exercise_completition: new_attributes }
        exercise_completition.reload
        expect(response).to redirect_to(exercise_completition_url(exercise_completition))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        exercise_completition = ExerciseCompletition.create! valid_attributes
        patch exercise_completition_url(exercise_completition), params: { exercise_completition: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested exercise_completition" do
      exercise_completition = ExerciseCompletition.create! valid_attributes
      expect {
        delete exercise_completition_url(exercise_completition)
      }.to change(ExerciseCompletition, :count).by(-1)
    end

    it "redirects to the exercise_completitions list" do
      exercise_completition = ExerciseCompletition.create! valid_attributes
      delete exercise_completition_url(exercise_completition)
      expect(response).to redirect_to(exercise_completitions_url)
    end
  end
end
