class DiariesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @diaries = Diary.includes(:user).order('created_at DESC')
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
    params.require(:diary).permit(:date, :site, :image,
                                  workouts_attributes: [:id, :diary_id, :menu, :weight, :rep, :set, :_destroy]).merge(user_id: current_user.id)
  end
end
