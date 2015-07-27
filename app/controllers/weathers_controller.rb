class WeathersController < ApplicationController

  def index
    @weather = Weather.all
  end

end
