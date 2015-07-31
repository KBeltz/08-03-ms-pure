class PedestriansController < ApplicationController
  before_action :set_pedestrian, only: [:show, :edit, :update, :destroy]

  # GET /pedestrians/1
  # GET /pedestrians/1.json
  def show
  end

  # GET /pedestrians/new
  def new
    @pedestrian = Pedestrian.new
  end

  # GET /pedestrians/1/edit
  def edit
  end

  # POST /pedestrians
  # POST /pedestrians.json
  def create
    @pedestrian = Pedestrian.new(pedestrian_params)

    respond_to do |format|
      if @pedestrian.save
        format.html { redirect_to "/profile", notice: 'Pedestrian was successfully created.' }
        format.json { render :show, status: :created, location: @pedestrian }
      else
        format.html { render :new }
        format.json { render json: @pedestrian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedestrians/1
  # PATCH/PUT /pedestrians/1.json
  def update
    respond_to do |format|
      if @pedestrian.update(pedestrian_params)
        format.html { redirect_to @pedestrian, notice: 'Pedestrian was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedestrian }
      else
        format.html { render :edit }
        format.json { render json: @pedestrian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedestrians/1
  # DELETE /pedestrians/1.json
  def destroy
    @pedestrian.destroy
    respond_to do |format|
      format.html { redirect_to pedestrians_url, notice: 'Pedestrian was successfully destroyed.' }
      format.json { head :no_content }
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
