class FarriersController < ApplicationController
  before_action :authorize_user, except: [:index, :show]
  def show
    @farrier = Farrier.find(params[:id])
  end

  def new
    @farrier = Farrier.new
  end

  def create
    @farrier = Farrier.new(farrier_params)
    if @farrier.save
      flash[:notice] = "New Farrier Added!"
      redirect_to @farrier
    else
      flash[:alert] = "New Farrier Not Created"
      render :new
    end
  end

  def edit
    @farrier = Farrier.find(params[:id])
  end

  def destroy
    @farrier = Farrier.find(params[:id])

    if @farrier.destroy
      flash[:notice] = 'Farrier has been deleted.'
      redirect_to new_farrier_path
    end
  end

  private

  def farrier_params
    params.require(:farrier).permit(
      :name,
      :phone_number,
      :address,
      :city,
      :state,
      :zip_code
    )
  end

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
