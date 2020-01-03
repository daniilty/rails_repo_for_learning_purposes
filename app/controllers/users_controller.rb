class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def show
    @user = User.find(params[:id])
  end
  def create
    params_user = params.require(:user).permit(:name, :email, :password, :password_confirmation)
    @user = User.new(params_user)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
end
