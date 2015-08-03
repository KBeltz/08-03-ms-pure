class WeathersController < ApplicationController

  def index
    @weather = Weather.all
  end

  def new
    @weather = Weather.all
  end

  def create
    @shift = Shift.find(params["shift"]["id"])
    @shift.weather_id = params["weather"]["id"]
    @shift.save
    redirect_to "/shifts/#{params['shift']['id']}"
  end


end
