class UsersController < ApplicationController
  # TODO - Remove this exception when we move the homepage to a different controller.
  before_action :authenticate_user!, except: [:index]
  
  def index
    # TODO - This is the homepage, but it shouldn't be. Make a new "pages_controller".
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @location = Location.find(current_user.location_id)
  end

  # GET /users/1/edit
  def edit
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if current_user.update_attributes(user_params)
        format.html { redirect_to current_user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: current_user }
      else
        format.html { render :edit }
        format.json { render json: current_user.errors, status: :unprocessable_entity }
      end
    end
  end

  def instructions
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end

end
