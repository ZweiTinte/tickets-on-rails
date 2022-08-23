class TicketsController < ApplicationController
  def new
    @lane = Lane.where("id = ?", params[:ref_models]).first
    @project = Project.find(@lane.project_id)
    @ticket = @lane.tickets.create(ticket_params)
    redirect_to project_path(@project)
  end

  private
    def ticket_params
      params.permit(:name, :description)
    end
end