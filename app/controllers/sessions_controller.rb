class SessionsController < ApplicationController
  def new
    @user=User.new
  end

  def create
    @user=User.find_by username: sessions_params[:username]
    if @user && @user.authenticate(sessions_params[:password])
      log_in(@user)
    else
      redirect_to login_path,alert: "Invalid Credentials!"
    end
  end

  def destroy
    log_out
  end
  
  protected
  
  def sessions_params
    params.require(:user).permit(:username,:password)
  end
end
