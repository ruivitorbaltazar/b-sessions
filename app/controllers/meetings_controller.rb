class MeetingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :fetch_meeting, only: %i[show edit update destroy]

  def index
    @meetings = Meeting.all
  end

  def show
    @meeting_trainees = MeetingTrainee.where(meeting_id: @meeting)
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(meeting_params)
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
    params.require(:meeting).permit(:name, :start_date, :end_date, trainees: [:id, :name, :email])
  end
end
