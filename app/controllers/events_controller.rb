class EventsController < ApplicationController
  before_action :authorize_user, except: [:index, :show]
  def show
    @event = Event.find(params[:id])
    @horse = @event.horse
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = "New Event Added!"
      redirect_to @event
    else
      flash[:alert] = "New Event Not Created"
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(
      :date,
      :time,
      :description,
      :notes,
      :horse_id
    )
  end

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
