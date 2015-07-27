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
end
