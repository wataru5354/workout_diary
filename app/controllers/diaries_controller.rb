class DiariesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
  end

  def new
    @diary = Diary.new
    @workout = @diary.workouts.build
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  private
  def diary_params
    params.require(:diary).permit(:date, :site, :image, :video, workouts_attributes:[:id, :diary_id, :menu, :weight, :rep, :set, :_destroy]).merge(user_id: current_user.id)
  end
end
