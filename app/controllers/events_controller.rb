class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def nearby
    distance = params[:distance] || 1
    @events = Event.where(place_id: Place.within(distance, :units => :kms, :origin => [params[:latitude], params[:longitude]])).where(date: Date.current..(Date.current + 1.days))
  end

  def search
    distance = params[:distance] || 1
    @events = Events.where(nil)
    @events = @events.joins(:performers).merge(Performer.category(params[:cat])) if params[:cat].present?
    @events = @events.joins(:genre).merge(Performer.genre(params[:gnr])) if (params[:gnr].present? and params[:cat]=="Singer")
    @events = @events.cheaper_than(params[:chp]) if params[:chp].present?
    @events = @events.where(place_id: Place.within(distance, :units => :kms, :origin => [params[:latitude], params[:longitude]]))
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :place_id, :performer_id, :description, :date, :price)
    end
end
