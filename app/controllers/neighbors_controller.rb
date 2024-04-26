class NeighborsController < ApplicationController
  before_action :set_neighbor, only: %i[ show edit update destroy ]

  # GET /neighbors or /neighbors.json
  def index
    @neighbors = Neighbor.all
  end

  # GET /neighbors/1 or /neighbors/1.json
  def show
  end

  # GET /neighbors/new
  def new
    @neighbor = Neighbor.new
  end

  # GET /neighbors/1/edit
  def edit
  end

  # POST /neighbors or /neighbors.json
  def create
    @neighbor = Neighbor.new(neighbor_params)

    respond_to do |format|
      if @neighbor.save
        format.html { redirect_to neighbor_url(@neighbor), notice: "Neighbor was successfully created." }
        format.json { render :show, status: :created, location: @neighbor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @neighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /neighbors/1 or /neighbors/1.json
  def update
    respond_to do |format|
      if @neighbor.update(neighbor_params)
        format.html { redirect_to neighbor_url(@neighbor), notice: "Neighbor was successfully updated." }
        format.json { render :show, status: :ok, location: @neighbor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @neighbor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neighbors/1 or /neighbors/1.json
  def destroy
    @neighbor.destroy

    respond_to do |format|
      format.html { redirect_to neighbors_url, notice: "Neighbor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_neighbor
      @neighbor = Neighbor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def neighbor_params
      params.require(:neighbor).permit(:name, :city_id)
    end
end
