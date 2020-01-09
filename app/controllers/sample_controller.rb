class SampleController < ApplicationController
  def home
    if logged_in?
    @user = current_user
    @micropost = current_user.microposts.build
    @microposts = @user.microposts
    end
  end

  def about
  end

  def help
    if logged_in?
      @user = current_user
      @microposts = @user.microposts
    end
  end
end
