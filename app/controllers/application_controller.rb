class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?
  helper_method :admin?

  def current_user
    @user=User.find_by id: session[:user_id]
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def admin?
    current_user.admin
  end
  
  def log_in(user)
    session[:user_id]=user.id
    redirect_to edit_user_path(user),notice: "You have logged in successfully."
  end
  
  def log_out
    session[:user_id]=nil
    redirect_to login_path,notice: "You have logged out."
  end
end
