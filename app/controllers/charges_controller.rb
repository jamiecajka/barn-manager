class ChargesController < ApplicationController
  before_action :authorize_user, except: [:index, :show]
  def show
    @charge = Charge.find(params[:id])
    @horse = @charge.horse
  end

  def new
    @charge = Charge.new
  end

  def create
    @charge = Charge.new(charge_params)
    if @charge.save
      flash[:notice] = "New Charge Added!"
      redirect_to @charge
    else
      flash[:alert] = "New Charge Not Created"
      render :new
    end
  end

  private

  def charge_params
    params.require(:charge).permit(
      :date,
      :description,
      :amount,
      :horse_id
    )
  end

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end