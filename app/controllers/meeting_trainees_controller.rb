class MeetingTraineesController < ApplicationController
  before_action :fetch_meeting, only: %i[create update destroy]
  before_action :fetch_meeting_trainee, only: %i[update destroy]

  def create
    @trainee = Trainee.new(trainee_params[:trainees])
    if Trainee.exists?(email: @trainee.email)
      @trainee = Trainee.find_by(email: @trainee.email)
      gen_meeting_trainee
    else
      if @trainee.save
        gen_meeting_trainee
      else
        render 'meetings/edit'
      end
    end
  end

  def update
  end

  def destroy
    if @meeting_trainee.destroy
      redirect_to edit_meeting_path(@meeting)
    else
      render 'meetings/edit'
    end
  end

  private

  def fetch_meeting
    @meeting = Meeting.find(params[:meeting_id])
  end

  def fetch_meeting_trainee
    @meeting_trainee = MeetingTrainee.find(params[:id])
  end

  def trainee_params
    params.require(:meeting_trainee).permit(trainees: [:name, :email])
  end

  def gen_meeting_trainee
    meeting_trainee = MeetingTrainee.new
    meeting_trainee.meeting = @meeting
    meeting_trainee.trainee = @trainee
    if meeting_trainee.save
      redirect_to edit_meeting_path(@meeting)
    else
      render 'meetings/edit'
    end
  end
end
