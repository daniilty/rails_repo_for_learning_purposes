class AccountActivationController < ApplicationController
  def edit
    user = User.find_by(email: params[:email])
    if user && user.authenticated?(:activation, params[:id]) && !user.activated
      user.activate
      log_in user
      redirect_to user
    else
      redirect_to root_url
    end
  end
end
