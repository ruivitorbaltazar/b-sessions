class SessionsController < ApplicationController
  before_action :fetch_session, only: %i[show edit update destroy]

  def index
    @sessions = Session.all
  end

  def show
    @session_trainees = SessionTrainee.where(session_id: @session)
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
    if @session.save
      redirect_to sessions_path
    else
      render :new
    end
  end

  def edit
    @session_trainees = SessionTrainee.where(session_id: @session)
    @session_trainee = SessionTrainee.new
    @trainee = Trainee.new
  end

  def update
    if @session.update(session_params)
      redirect_to session_path(@session)
    else
      render :edit
    end
  end

  def destroy
    if @session.destroy
      redirect_to sessions_path
    else
      render :edit
    end
  end

  private

  def fetch_session
    @session = Session.find(params[:id])
  end

  def session_params
    params.require(:session).permit(:name, :start_date, :end_date, trainees: [:id, :name, :email])
  end
end
