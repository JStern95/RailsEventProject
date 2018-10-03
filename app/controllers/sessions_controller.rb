class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]

  def new
    render :new
  end

  def create
    @login = User.find_by(username: params[:username]) || Artist.find_by(username: params[:username])
      if @login && @login.authenticate(params[:password])
        if @login.class == User
            session[:user_id] = @login.id
            redirect_to user_path(@login.id)
        elsif @login.class == Artist
        session[:artist_id] = @login.id
        redirect_to artist_path(@login.id)
        end
    else
        flash[:notice] = 'Invalid username or password'
        redirect_to login_path
      end
  end

    def destroy
    session.delete(:user_id) || session.delete(:artist_id)
    flash[:notice] = 'You have been logged out'
    redirect_to login_path
  end

end
