class TicketsController < ApplicationController

  def create
    @ticket = Ticket.create(ticket_params)
    redirect_to user_path(@ticket.user)
  end

private

  def ticket_params
    params.require(:ticket).permit(:user_id, :event_id)
  end
end
