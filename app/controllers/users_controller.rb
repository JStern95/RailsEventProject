class UsersController < ApplicationController

  before_action :find_user, except: [:index, :new, :create]
  skip_before_action :authorized, only: [:new, :create]

  def index
    @users = User.all
  end

  def show
  end

  def new
    if !!current_user && current_user.class == User
      flash[:new_error] = "You're already logged in!"
      redirect_to user_path(current_user.id)
    elsif !!current_user && current_user.class == Artist
      flash[:new_error] = "You do not have access to that area"
      redirect_to artist_path(current_user.id)
    else
      @user = User.new
    end
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def edit
    if !!current_user && current_user.class == User
      render :edit
    elsif !!current_user && current_user.class == Artist
      flash[:new_error] = "You do not have access to that area"
      redirect_to artist_path(current_user.id)
    end
  end

  def update
    @user.update(user_params)
    if @user.valid?
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to edit_user_path
    end
  end

  def destroy
  end

private

  def find_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password, :email, :city )
  end


end
