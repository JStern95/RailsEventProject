class EventsController < ApplicationController

  before_action :find_event, except: [:index, :new, :create]

  def index
    if params[:place]
      @events = Event.all.select{|e| e.location == "#{params[:place]}" || e.venue == "#{params[:place]}" }
    else
      @events = Event.all
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

private

  def find_event
    @event = Event.find_by(id: params[:id])
  end

  def event_params
    params.require(:event).permit(:location, :venue, :show_date, :show_time, :artist_id)
  end

end
