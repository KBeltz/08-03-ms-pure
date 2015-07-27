class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # Get /login
  def login
  end

  # Post /authenticate_login
  def authenticate_login
    entered_email = params["user"]["email"]
    @user = User.find_by(email: entered_email)

    if !@user.nil?
      @valid = true
      given_pw = params["user"]["password"]
      actual_pw = BCrypt::Password.new(@user.password)
      if actual_pw == given_pw
        session[:user_id] = @user.id
        redirect_to user_path(session[:user_id])
      else
        @valid = false
        render "login"
      end
    else
      @valid = false
      render "login"
    end
  end

  # GET /users
  # GET /users.json
  def index
    @users = User.all
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
    @user = User.new({"username" => params["user"]["username"], "email" => email, "password" => password, "location_id" => params["user"]["location_id"]})



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
      @user.username = params["user"]["username"]
      @user.email = params["user"]["email"]
      password = BCrypt::Password.create(params["user"]["password"])
      @user.password = password
      @user.admin = params["user"]["admin"]
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
      @user = User.find(session[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :email, :password, :admin, :location_id)
    end
end
