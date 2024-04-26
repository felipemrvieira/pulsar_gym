class SubscriptionPlansController < ApplicationController
  before_action :set_subscription_plan, only: %i[ show edit update destroy ]

  # GET /subscription_plans or /subscription_plans.json
  def index
    @subscription_plans = SubscriptionPlan.all
  end

  # GET /subscription_plans/1 or /subscription_plans/1.json
  def show
  end

  # GET /subscription_plans/new
  def new
    @subscription_plan = SubscriptionPlan.new
  end

  # GET /subscription_plans/1/edit
  def edit
  end

  # POST /subscription_plans or /subscription_plans.json
  def create
    @subscription_plan = SubscriptionPlan.new(subscription_plan_params)

    respond_to do |format|
      if @subscription_plan.save
        format.html { redirect_to subscription_plan_url(@subscription_plan), notice: "Subscription plan was successfully created." }
        format.json { render :show, status: :created, location: @subscription_plan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subscription_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscription_plans/1 or /subscription_plans/1.json
  def update
    respond_to do |format|
      if @subscription_plan.update(subscription_plan_params)
        format.html { redirect_to subscription_plan_url(@subscription_plan), notice: "Subscription plan was successfully updated." }
        format.json { render :show, status: :ok, location: @subscription_plan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subscription_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscription_plans/1 or /subscription_plans/1.json
  def destroy
    @subscription_plan.destroy

    respond_to do |format|
      format.html { redirect_to subscription_plans_url, notice: "Subscription plan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscription_plan
      @subscription_plan = SubscriptionPlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subscription_plan_params
      params.require(:subscription_plan).permit(:name, :price_cents, :expiration, :super_admin_id)
    end
end
