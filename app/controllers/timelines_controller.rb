class TimelinesController < ApplicationController

  def index
    @timeline = Timeline.order(created_at: :desc)
  end

  def new
    @timeline = Timeline.new
  end

  def create
    @timeline = Timeline.new(timeline_params)
    if @timeline.save
      redirect_to timelines_path(@timelines)
    else
      render 'new'
    end
  end

private

  def timeline_params
    params.require(:timeline).permit(:project, :description)
  end

end
