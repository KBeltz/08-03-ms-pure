class WeathersController < ApplicationController

  def index
    @weather = Weather.all
  end

  def new
    @weather = Weather.all
  end


end
