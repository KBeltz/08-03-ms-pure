class CyclistsController < ApplicationController
  before_action :set_cyclist, only: [:show, :edit, :update, :destroy]

  # GET /cyclists/new
  def new
    @cyclist = Cyclist.new
  end

  # POST /cyclists
  # POST /cyclists.json
  def create
    @cyclist = Cyclist.new(cyclist_params)
    @cyclist.shift_id = params["shift"]["id"]

    respond_to do |format|
      if @cyclist.save
        format.html { redirect_to "/shifts/#{params['shift']['id']}", notice: "Cyclist data was successfully submitted at #{Time.now.localtime.strftime("%a, %b %d %Y, %I:%M %P")}." }
        format.json { render :show, status: :created, location: @cyclist }
      else
        format.html { render :new }
        format.json { render json: @cyclist.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cyclist
      @cyclist = Cyclist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cyclist_params
      params.require(:cyclist).permit(:quantity, :sex, :helmet, :sidewalk, :wrong_way)
    end
end
