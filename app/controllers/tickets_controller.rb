class TicketsController < ApplicationController

  def create
    @ticket = Ticket.create(user_id: params[:user_id].keys[0], event_id: params[:event_id].keys[0])
    redirect_to user_path(@ticket.user)
  end
  # if Ticket.all.each{|t| t.user_id == (user_id: params[:user_id].keys[0]) && t.event_id == (event_id: params[:event_id].keys[0])}
  # @ticket = Ticket.create(user_id: params[:user_id].keys[0], event_id: params[:event_id].keys[0])
  # redirect_to user_path(@ticket.user)
  #
  # user = User.find(session[:user_id])
  #   if e.id == params[:event_id].keys[0].to_i

  def destroy
    @ticket= Ticket.all.find_by(id: params[:id])
    @ticket.destroy
    redirect_to user_path(@ticket.user)
  end
end
