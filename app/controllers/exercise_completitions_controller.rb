class ExerciseCompletitionsController < ApplicationController
  before_action :set_exercise_completition, only: %i[ show edit update destroy ]

  # GET /exercise_completitions or /exercise_completitions.json
  def index
    @exercise_completitions = ExerciseCompletition.all
  end

  # GET /exercise_completitions/1 or /exercise_completitions/1.json
  def show
  end

  # GET /exercise_completitions/new
  def new
    @exercise_completition = ExerciseCompletition.new
  end

  # GET /exercise_completitions/1/edit
  def edit
  end

  # POST /exercise_completitions or /exercise_completitions.json
  def create
    @exercise_completition = ExerciseCompletition.new(exercise_completition_params)

    respond_to do |format|
      if @exercise_completition.save
        format.html { redirect_to exercise_completition_url(@exercise_completition), notice: "Exercise completition was successfully created." }
        format.json { render :show, status: :created, location: @exercise_completition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exercise_completition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_completitions/1 or /exercise_completitions/1.json
  def update
    respond_to do |format|
      if @exercise_completition.update(exercise_completition_params)
        format.html { redirect_to exercise_completition_url(@exercise_completition), notice: "Exercise completition was successfully updated." }
        format.json { render :show, status: :ok, location: @exercise_completition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exercise_completition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_completitions/1 or /exercise_completitions/1.json
  def destroy
    @exercise_completition.destroy

    respond_to do |format|
      format.html { redirect_to exercise_completitions_url, notice: "Exercise completition was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_completition
      @exercise_completition = ExerciseCompletition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exercise_completition_params
      params.require(:exercise_completition).permit(:load, :checkin_id, :exercise_id)
    end
end
