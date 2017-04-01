class HostedEventsController < ApplicationController
  before_action :set_hosted_event, only: [:show, :edit, :update, :destroy]

  # GET /hosted_events
  # GET /hosted_events.json
  def index
    @hosted_events = HostedEvent.all
  end

  # GET /hosted_events/1
  # GET /hosted_events/1.json
  def show
  end

  # GET /hosted_events/new
  def new
    @hosted_event = HostedEvent.new
  end

  # GET /hosted_events/1/edit
  def edit
  end

  # POST /hosted_events
  # POST /hosted_events.json
  def create
    @hosted_event = HostedEvent.new(hosted_event_params)

    respond_to do |format|
      if @hosted_event.save
        format.html { redirect_to @hosted_event, notice: 'Hosted event was successfully created.' }
        format.json { render :show, status: :created, location: @hosted_event }
      else
        format.html { render :new }
        format.json { render json: @hosted_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hosted_events/1
  # PATCH/PUT /hosted_events/1.json
  def update
    respond_to do |format|
      if @hosted_event.update(hosted_event_params)
        format.html { redirect_to @hosted_event, notice: 'Hosted event was successfully updated.' }
        format.json { render :show, status: :ok, location: @hosted_event }
      else
        format.html { render :edit }
        format.json { render json: @hosted_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hosted_events/1
  # DELETE /hosted_events/1.json
  def destroy
    @hosted_event.destroy
    respond_to do |format|
      format.html { redirect_to hosted_events_url, notice: 'Hosted event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hosted_event
      @hosted_event = HostedEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hosted_event_params
      params.require(:hosted_event).permit(:title, :event_type, :location, :published, :host_name, :date, :description)
    end
end
