class HorsesController < ApplicationController
  def show
    @horse = Horse.find(params[:id])
    @users = @horse.users
    @charges = @horse.charges
    @events = @horse.events
    @veternarians = @horse.veternarians
    @farriers = @horse.farriers
  end
end
