class ApplicationController < ActionController::Base
  before_action :authorized #lock down this whole app
  helper_method :current_user #i can call current_user from a view

  def current_user
    User.find_by({ id: session[:user_id] }) || Artist.find_by({ id: session[:artist_id] })
  end

  def logged_in?
    !!current_user
  end

  def authorized
    flash[:notice] = "You must be logged in to view that"
    redirect_to login_path unless logged_in?
  end

  private

  def cities
    @cities = [["New York City"], ["Boston"], ["Philadelphia"]]
  end
end
