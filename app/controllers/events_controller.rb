class EventsController < ApplicationController

  before_action :find_event, except: [:index, :new, :create]
  skip_before_action :authorized, only: [:index, :show]

  def index
    if params[:place]
      #@events = Event.all.select{|e| e.city.downcase == "#{params[:place].downcase}" || e.venue.downcase == "#{params[:place].downcase}" }
      @events = upcoming_events.select{|e| e.city.downcase.include?("#{params[:place].downcase}") || e.venue.downcase.include?("#{params[:place].downcase}") }

    else
      @events = upcoming_events.sort_by{|e| e.show_date}
    end
  end

  def show
    @ticket = Ticket.new
  end

  def new
    cities
    if !!current_user && current_user.class == User
      flash[:new_error] = "You do not have access to that area"
      redirect_to user_path(current_user.id)
    else
    @event = Event.new
    end
  end

  def create
    cities
    @event = Event.new(event_params)
    @event.artist_id = current_user.id
    @event.save
    if @event.valid?
      redirect_to @event
    else
      flash[:errors] = @event.errors.full_messages
      redirect_to new_event_path
    end
  end

  def edit
    cities
    if !!current_user && current_user.class == User
      flash[:new_error] = "You do not have access to that area"
      redirect_to user_path(current_user.id)
    end
  end

  def update
    cities
    @event.update(event_params)
    if @event.valid?
      redirect_to @event
    else
      flash[:errors] = @event.errors.full_messages
      redirect_to edit_event_path
    end
  end

  def destroy
    @event.tickets.destroy_all
    @event.destroy
    redirect_to artist_path(current_user.id)
  end

private

  def find_event
    @event = Event.find_by(id: params[:id])
  end

  def event_params
    params.require(:event).permit(:city, :venue, :show_date, :show_time, :artist_id)
  end

end
