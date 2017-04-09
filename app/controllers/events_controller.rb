class EventsController < ApplicationController
  def index
    @events  = Event.where(status: 'published').where("name LIKE ?", "%#{params[:search_text]}%").page(params[:page])
  end
  def show

  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to dashboard_path, notice: 'Hosted event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def attain

  end

  private
  def event_params
    params.require(:event).permit(:name, :evebt_date, :location_id, :description, :status)
  end
end
