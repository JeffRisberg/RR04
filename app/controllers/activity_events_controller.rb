class ActivityEventsController < ApplicationController
  # GET /activity_events
  # GET /activity_events.json
  def index
    @activity_events = ActivityEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @activity_events }
    end
  end

  # GET /activity_events/1
  # GET /activity_events/1.json
  def show
    @activity_event = ActivityEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @activity_event }
    end
  end

  # GET /activity_events/new
  # GET /activity_events/new.json
  def new
    @activity_event = ActivityEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @activity_event }
    end
  end

  # GET /activity_events/1/edit
  def edit
    @activity_event = ActivityEvent.find(params[:id])
  end

  # POST /activity_events
  # POST /activity_events.json
  def create
    @activity_event = ActivityEvent.new(params[:activity_event])

    respond_to do |format|
      if @activity_event.save
        format.html { redirect_to @activity_event, notice: 'Activity event was successfully created.' }
        format.json { render json: @activity_event, status: :created, location: @activity_event }
      else
        format.html { render action: "new" }
        format.json { render json: @activity_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /activity_events/1
  # PUT /activity_events/1.json
  def update
    @activity_event = ActivityEvent.find(params[:id])

    respond_to do |format|
      if @activity_event.update_attributes(params[:activity_event])
        format.html { redirect_to @activity_event, notice: 'Activity event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @activity_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_events/1
  # DELETE /activity_events/1.json
  def destroy
    @activity_event = ActivityEvent.find(params[:id])
    @activity_event.destroy

    respond_to do |format|
      format.html { redirect_to activity_events_url }
      format.json { head :no_content }
    end
  end
end
