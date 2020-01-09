class ApplicationController < ActionController::Base
  include SessionHelper

  private
  def logged_in_user
    unless logged_in?
      store_location
      redirect_to root_url
    end
  end
end
