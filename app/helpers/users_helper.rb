module UsersHelper
  # sets the current user or redirects to the login screen
  #
  # returns the current user or redirects
  def current_user
    if session[:user_id]
      @user = User.find(session[:user_id].to_i)
    else
      session.clear
      redirect "/login"
    end
  end

  # verifies the admin status
  #
  # returns boolean
  def admin_user
    if @user.admin
      return true
    else
      redirect "/index"
    end
  end
end
