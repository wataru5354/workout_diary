class DiariesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search]
  before_action :set_diary, only: [:show, :edit, :update, :destroy]

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

  def show
    @workouts = Workout.where(diary_id: params[:id])
  end

  def edit
    redirect_to root_path unless @diary.user_id == current_user.id
  end

  def update
    if @diary.update(diary_params)
      redirect_to diary_path
    else
      render :edit
    end
  end

  def destroy
    if @diary.user_id == current_user.id && @diary.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def search
    @diaries = Diary.includes(:user,:workouts).references(:user,:workouts).search(params[:keyword]).order('diaries.created_at DESC')
  end

  private

  def diary_params
    params.require(:diary).permit(:start_time, :site, :image,
                                  workouts_attributes: [:id, :diary_id, :menu, :weight, :rep, :set, :_destroy]).merge(user_id: current_user.id)
  end

  def set_diary
    @diary = Diary.find(params[:id])
  end
end
