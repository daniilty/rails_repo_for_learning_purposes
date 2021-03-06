class UsersController < ApplicationController
  before_action :logged_in_user, only: [:destroy, :index, :edit, :update]
  before_action :correct_user, only: [:edit, :update]
  def new
    @user = User.new
  end
  def destroy
    User.find(params[:id]).destroy
    redirect_to users_url
  end
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts
  end
  def edit
    @user = User.find(params[:id])
  end
  def index
    @users = User.all
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params_user)
      redirect_to @user
    else
      render 'edit'
    end
  end
  def create
    @user = User.new(params_user)
    if @user.save
      @user.send_activation_email
      redirect_to root_url
    else
      render 'new'
    end
  end
  def params_user
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
end
