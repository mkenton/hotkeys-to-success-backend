class LessonEventsController < ApplicationController
  before_action :set_lesson_event, only: [:show, :update, :destroy]

  # GET /lesson_events
  def index
    @lesson_events = LessonEvent.all

    render json: @lesson_events
  end

  # GET /lesson_events/1
  def show
    render json: @lesson_event
  end

  # POST /lesson_events
  def create
    @lesson_event = LessonEvent.new(lesson_event_params)

    if @lesson_event.save
      render json: @lesson_event, status: :created, location: @lesson_event
    else
      render json: @lesson_event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lesson_events/1
  def update
    if @lesson_event.update(lesson_event_params)
      render json: @lesson_event
    else
      render json: @lesson_event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lesson_events/1
  def destroy
    @lesson_event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_event
      @lesson_event = LessonEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lesson_event_params
      params.require(:lesson_event).permit(:status, :lesson_id, :user_id)
    end
end
