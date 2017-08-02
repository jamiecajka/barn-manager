class HorsesController < ApplicationController
  def show
    @horse = Horse.find(params[:id])
    @user = @horse.user
    @veterinarian = @horse.veterinarian
    @farriers = @horse.farrier
  end

  def new
    @horse = Horse.new
  end

  def create
    @horse = Horse.new(horse_params)
    if @horse.save
      flash[:notice] = "New Horse Added!"
      redirect_to horse_path
    else
      flash[:alert] = "New Horse Not Created"
      render :new
    end
  end

  private

  def horse_params
    params.require(:horse).permit(
      :registered_name,
      :barn_name,
      :breed,
      :disipline,
      :user_id,
      :veterinarian_id,
      :farrier_id,
      :picture
      )
  end
end
