class LanesController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @lane = @project.lanes.create(lane_params)
    redirect_to project_path(@project)
  end

  private
    def lane_params
      params.require(:lane).permit(:name)
    end
end