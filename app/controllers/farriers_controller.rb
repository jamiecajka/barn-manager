class FarriersController < ApplicationController
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
end
