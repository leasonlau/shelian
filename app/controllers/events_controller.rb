#coding: utf-8
class EventsController < ApplicationController
  before_filter :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  # GET /events
  # GET /events.json
  def index
    @events = Event.order("created_at desc").page params[:page]
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])

    @event.update_views_count
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  def show_area
    @event_areas =  Event.order("created_at desc").where(:area => params[:area]).page params[:page]
  end

  def show_kind
    @event_kinds =  Event.order("created_at desc").where(:kind => params[:kind]).page params[:page]
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        Attachment.create(:attachment => params[:attachment], :attachmentable => @event) if params[:attachment]
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
end
