class NotesController < ApplicationController
  before_action :authorize_user, except: [:index, :show]
  def show
    @note = Note.find(params[:id])
    @horse = @note.horse
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      flash[:notice] = "New Note Added!"
      redirect_to @note
    else
      flash[:alert] = "New Note Not Created"
      render :new
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  private

  def note_params
    params.require(:note).permit(
      :text,
      :horse_id
    )
  end

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
