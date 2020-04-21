class MeetingsController < ApplicationController
  before_action :fetch_meeting, only: %i[show edit update destroy]

  def index
    @meetings_as_host = current_user.meetings
    user_trainee = Trainee.find_by(email: current_user.email)
    @meetings_as_trainee = user_trainee.meetings.where.not(user_id: current_user)
  end

  def show
    @meeting_trainees = MeetingTrainee.where(meeting_id: @meeting)
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.user = current_user
    if @meeting.save
      redirect_to meetings_path
    else
      render :new
    end
  end

  def edit
    @meeting_trainees = MeetingTrainee.where(meeting_id: @meeting)
    @meeting_trainee = MeetingTrainee.new
    @trainee = Trainee.new
  end

  def update
    @meeting.user = current_user
    if @meeting.update(meeting_params)
      redirect_to meeting_path(@meeting)
    else
      render :edit
    end
  end

  def destroy
    if @meeting.destroy
      redirect_to meetings_path
    else
      render :edit
    end
  end

  private

  def fetch_meeting
    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(:name, :start_date, :end_date)
  end
end
