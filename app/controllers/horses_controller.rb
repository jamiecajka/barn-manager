class HorsesController < ApplicationController
  before_action :authorize_user, except: [:index, :show]
  def show
    @horse = Horse.find(params[:id])
    @user = @horse.user
    @veterinarian = @horse.veterinarian
    @farriers = @horse.farrier
    @charges = Charge.all
    @events = Event.all
  end

  def new
    @horse = Horse.new
  end

  def create
    @horse = Horse.new(horse_params)
    if @horse.save
      flash[:notice] = "New Horse Added!"
      redirect_to @horse
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
      :discipline,
      :user_id,
      :veterinarian_id,
      :farrier_id,
      :picture
    )
  end

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
