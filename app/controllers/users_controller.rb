class UsersController < ApplicationController
  before_action :load_user,only: [:edit,:update]
  
  def new
    @user=User.new
  end

  def create
    @user=User.new(user_params)
    if @user.username=="joeradtke"
      @user.admin=true
    end
    if @user.save
      log_in(@user)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to edit_user_path(@user),notice: "Your profile was update successfully."
    else
      render 'edit'
    end
  end
  
  protected
  
  def user_params
    params.require(:user)
    	.permit(:username,:password,:password_digest,:email,:firstname,:lastname)
  end
  
  def load_user
    @user=User.find_by id: params[:id]
  end
end
