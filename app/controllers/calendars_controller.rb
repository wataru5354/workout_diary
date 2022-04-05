class CalendarsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(current_user.id)
    @diaries = @user.diaries
  end

  def show
    @user = User.find(params[:user_id])
    @diaries = @user.diaries
  end
end
