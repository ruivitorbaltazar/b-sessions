class SessionTraineesController < ApplicationController
  before_action :fetch_session, only: %i[create update destroy]
  before_action :fetch_session_trainee, only: %i[update destroy]

  def create
    @trainee = Trainee.new(trainee_params[:trainees])
    if @trainee.save
      session_trainee = SessionTrainee.new
      session_trainee.session = @session
      session_trainee.trainee = @trainee
      if session_trainee.save
        redirect_to edit_session_path(@session)
      else
        render 'sessions/edit'
      end
    else
      render 'sessions/edit'
    end
  end

  def update
  end

  def destroy
    if @session_trainee.destroy
      redirect_to edit_session_path(@session)
    else
      render 'sessions/edit'
    end
  end

  private

  def fetch_session
    @session = Session.find(params[:session_id])
  end

  def fetch_session_trainee
    @session_trainee = SessionTrainee.find(params[:id])
  end

  def trainee_params
    params.require(:session_trainee).permit(trainees: [:name, :email])
  end
end
