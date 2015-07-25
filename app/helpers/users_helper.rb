module UsersHelper
  # sets the current user or redirects to the login screen
  #
  # returns the current user or redirects
  def current_user
    if session[:user_id]
      @user = User.find(session[:user_id].to_i)
    else
      session.clear
      redirect_to "/login"
    end
  end

  # verifies the admin status
  #
  # returns boolean
  def admin_user
    if @user.admin
      return true
    else
      redirect_to "/index" # redirects back to the user's home screen
    end
  end
end
