class VeterinariansController < ApplicationController
  def show
    @veterinarian = Veterinarian.find(params[:id])
  end

  def new
    @veterinarian = Veterinarian.new
  end

  def create
    @veterinarian = Veterinarian.new(veterinarian_params)
    if @veterinarian.save
      flash[:notice] = "New Veterinarian Added!"
      redirect_to @veterinarian
    else
      flash[:alert] = "New Veterinarian Not Created"
      render :new
    end
  end

  private

  def veterinarian_params
    params.require(:veterinarian).permit(
      :name,
      :phone_number,
      :address,
      :city,
      :state,
      :zip_code
    )
  end
end
