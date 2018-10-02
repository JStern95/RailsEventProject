class EventsController < ApplicationController

  before_action :find_event, except: [:index, :new, :create]
  skip_before_action :authorized, only: [:index, :show]

  def index
    if params[:place]
      #@events = Event.all.select{|e| e.city.downcase == "#{params[:place].downcase}" || e.venue.downcase == "#{params[:place].downcase}" }
      @events = Event.all.select{|e| e.city.downcase.include?("#{params[:place].downcase}") || e.venue.downcase.include?("#{params[:place].downcase}") }
    else
      @events = Event.all
    end
  end

  def show
    @ticket = Ticket.new
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    if @event.valid?
      redirect_to @event
    else
      flash[:errors] = @event.errors.full_messages
      redirect_to new_event_path
    end
  end

  def edit
  end

  def update
    @event.update(event_params)
    if @event.valid?
      redirect_to @event
    else
      flash[:errors] = @event.errors.full_messages
      redirect_to edit_event_path
    end
  end

private

  def find_event
    @event = Event.find_by(id: params[:id])
  end

  def event_params
    params.require(:event).permit(:city, :venue, :show_date, :show_time, :artist_id)
  end

end
