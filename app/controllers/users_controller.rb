class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  # Get /login
  def login
  end

  # Get /logout
  def logout
    reset_session
  end

  # Post /authenticate_login
  # def authenticate_login
  #   entered_email = params["user"]["email"]
  #   @user = User.find_by(email: entered_email)
  #
  #   if !@user.nil?
  #     @valid = true
  #     given_pw = params["user"]["password"]
  #     actual_pw = BCrypt::Password.new(@user.password)
  #     if actual_pw == given_pw
  #       session[:user_id] = @user.id
  #       redirect_to user_path(session[:user_id])
  #     else
  #       @valid = false
  #       render "login"
  #     end
  #   else
  #     @valid = false
  #     render "login"
  #   end
  # end

  # GET /users
  # GET /users.json
  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      @user = User.new
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @location = Location.find(@user.location_id)
  end

  # GET /users/new
  def new
    @user = User.new
    @locations = Location.all
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    email = params["user"]["email"]
    password = BCrypt::Password.create(params["user"]["password"])
    @user = User.new({"first_name" => params["user"]["first_name"], "last_name" => params["user"]["last_name"], "email" => email, "password" => password, "location_id" => params["user"]["location_id"]})



    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      @user.first_name = params["user"]["first_name"]
      @user.last_name = params["user"]["last_name"]
      @user.email = params["user"]["email"]
      password = BCrypt::Password.create(params["user"]["password"])
      @user.password = password
      @user.location_id = params["user"]["location_id"]

      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def instructions
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(6)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :admin, :location_id)
    end

end
