class PedestriansController < ApplicationController
  before_action :set_pedestrian, only: [:show, :edit, :update, :destroy]

  # GET /pedestrians/new
  def new
    @pedestrian = Pedestrian.new
  end

  # POST /pedestrians
  # POST /pedestrians.json
  def create
    @pedestrian = Pedestrian.new(pedestrian_params)
    @pedestrian.shift_id = params["shift"]["id"]

    respond_to do |format|
      if @pedestrian.save
        format.html { redirect_to "/shifts/#{params['shift']['id']}", notice: "Pedestrian data was successfully submitted at #{Time.now.localtime.strftime("%a, %b %d %Y, %I:%M %P")}." }
        format.json { render :show, status: :created, location: @pedestrian }
      else
        format.html { render :new }
        format.json { render json: @pedestrian.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedestrian
      @pedestrian = Pedestrian.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedestrian_params
      params.require(:pedestrian).permit(:quantity, :sex, :disabled, :other)
    end
end
