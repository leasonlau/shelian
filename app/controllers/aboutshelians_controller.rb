#coding: utf-8
class AboutsheliansController < ApplicationController
  before_filter :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  # GET /aboutshelians
  # GET /aboutshelians.json
  def index
    @aboutshelians = Aboutshelian.where(:title => "社联章程")
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aboutshelian }
    end
  end

  # GET /aboutshelians/1
  # GET /aboutshelians/1.json
  def show
    @aboutshelian = Aboutshelian.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aboutshelian }
    end
  end

  def theme
    @aboutshelian_themes =  Aboutshelian.find_all_by_title(params[:theme])
  end

  def star
    @stars = Star.where(:area => '社联之星').page params[:page]
  end

  # GET /aboutshelians/new
  # GET /aboutshelians/new.json
  def new
    @aboutshelian = Aboutshelian.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aboutshelian }
    end
  end

  # GET /aboutshelians/1/edit
  def edit
    @aboutshelian = Aboutshelian.find(params[:id])
  end

  # POST /aboutshelians
  # POST /aboutshelians.json
  def create
    @aboutshelian = Aboutshelian.new(params[:aboutshelian])

    respond_to do |format|
      if @aboutshelian.save
        format.html { redirect_to @aboutshelian, notice: 'Aboutshelian was successfully created.' }
        format.json { render json: @aboutshelian, status: :created, location: @aboutshelian }
      else
        format.html { render action: "new" }
        format.json { render json: @aboutshelian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aboutshelians/1
  # PUT /aboutshelians/1.json
  def update
    @aboutshelian = Aboutshelian.find(params[:id])

    respond_to do |format|
      if @aboutshelian.update_attributes(params[:aboutshelian])
        format.html { redirect_to @aboutshelian, notice: 'Aboutshelian was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aboutshelian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aboutshelians/1
  # DELETE /aboutshelians/1.json
  def destroy
    @aboutshelian = Aboutshelian.find(params[:id])
    @aboutshelian.destroy

    respond_to do |format|
      format.html { redirect_to aboutshelians_url }
      format.json { head :no_content }
    end
  end
end
