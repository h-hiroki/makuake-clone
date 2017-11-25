class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: :new

  def index
  end

  def new
    @project = Project.new
    @project.course.build
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path, notice: "企画が投稿されました。"
    else
      flash.now[:alert] = "未入力項目があります。"
      redirect_to new_planner_project_path, alert: "未入力項目があります。"
    end
  end

  private
  def project_params
    params.require(:project).permit(:title, :target_fig, :end_time, :title, :image, :body).merge(planner_id: current_user.id)
  end

end
