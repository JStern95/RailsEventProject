class ArtistsController < ApplicationController
    before_action :find_artist, only: [:show, :edit, :update]
    skip_before_action :authorized, only: [:index, :show]

  def index
    if params[:artist]
      @artists = Artist.all.select{|a| a.name.downcase.include?("#{params[:artist].downcase}")}
    else
      @artists = Artist.all
    end
  end

  def show
    upcoming_events
  end

  def edit
    if current_user.class == Artist && current_user.id == @artist.id
    elsif current_user.class == Artist
      redirect_to artist_path(current_user.id)
    elsif current_user.class == User
      redirect_to user_path(current_user.id)
    else
      redirect_to login_path
    end
  end

  def update
    @artist.update(artist_params)
    if @artist.valid?
      redirect_to @artist
    else
      flash[:errors] = @artist.errors.full_messages
      redirect_to edit_artist_path
    end
  end

  private

  def find_artist
      @artist = Artist.find_by(id: params[:id])
  end

  def artist_params
      params.require(:artist).permit(:name, :username, :email, :password, :password_confirmation)
  end
end
