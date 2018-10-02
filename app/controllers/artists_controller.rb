class ArtistsController < ApplicationController
    before_action :find_artist, only: :show
    skip_before_action :authorized, only: [:index, :show]

  def index
    if params[:artist]
      @artists = Artist.all.select{|a| a.name.downcase.include?("#{params[:artist].downcase}")}
    else
      @artists = Artist.all
    end
  end

    def show
    end

  private

    def find_artist
      @artist = Artist.find_by(id: params[:id])
    end

    def artist_params
      params.require(:artist).permit(:name)
    end


  end
