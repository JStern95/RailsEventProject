class UsersController < ApplicationController

  before_action :find_user, except: [:index, :new, :create]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def edit
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
    params.require(:user).permit(:first_name, :last_name, :username, :password, :email, :location )
  end


end
