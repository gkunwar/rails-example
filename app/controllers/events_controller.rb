class EventsController < ApplicationController
  def index
    @events = @events = Event.where("name LIKE ?", "%#{params[:search_text]}%").page(params[:page])
  end
  def show

  end
end
