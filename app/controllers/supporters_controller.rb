class SupportersController < ApplicationController
  before_action :set_course, only: [:new, :create, :confirm]

  def new
    @supporter = @course.supporters.new
  end

  def create
    @supporter  = current_user.supporters.new(supporter_params)
    if params[:back]
      render :new
    elsif @supporter.save
      redirect_to root_path , notice: "ご支援ありがとうございました。"
    else
      flash.now[:alert] = "支援できませんでした。"
      render :new
    end
  end

  def confirm
    @supporter  = current_user.supporters.new(supporter_params)
    if @supporter.invalid?
      flash.now[:alert] = "未入力項目があります。"
      render :new
    end
  end

  private
  def supporter_params
    params.require(:supporter).permit(:name, :gender, :birthday, :mobile, :postal_code, :region, :city, :block, :building).merge(course_id: params[:course_id])
  end

  def set_course
    @course = Course.find(params[:course_id])
  end

end
