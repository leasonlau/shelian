#coding: utf-8
class AboutshetuansController < ApplicationController
  before_filter :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  # GET /aboutshetuans
  # GET /aboutshetuans.json
  def index
    @aboutshetuans = Aboutshetuan.order("created_at desc").page params[:page]
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aboutshetuans }
    end
  end

  # GET /aboutshetuans/1
  # GET /aboutshetuans/1.json
  def show
    @aboutshetuan = Aboutshetuan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aboutshetuan }
    end
  end

  def show_kind
    @aboutshetuan_kinds =  Aboutshetuan.where(:kind => params[:kind]).page params[:page]
  end

  def star
    @stars = Star.where(:area => '社团之星').page params[:page]
  end

  # GET /aboutshetuans/new
  # GET /aboutshetuans/new.json
  def new
    @aboutshetuan = Aboutshetuan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aboutshetuan }
    end
  end

  # GET /aboutshetuans/1/edit
  def edit
    @aboutshetuan = Aboutshetuan.find(params[:id])
  end

  # POST /aboutshetuans
  # POST /aboutshetuans.json
  def create
    @aboutshetuan = Aboutshetuan.new(params[:aboutshetuan])

    respond_to do |format|
      if @aboutshetuan.save
        format.html { redirect_to @aboutshetuan, notice: 'Aboutshetuan was successfully created.' }
        format.json { render json: @aboutshetuan, status: :created, location: @aboutshetuan }
      else
        format.html { render action: "new" }
        format.json { render json: @aboutshetuan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aboutshetuans/1
  # PUT /aboutshetuans/1.json
  def update
    @aboutshetuan = Aboutshetuan.find(params[:id])

    respond_to do |format|
      if @aboutshetuan.update_attributes(params[:aboutshetuan])
        Attachment.create(:attachment => params[:attachment], :attachmentable => @aboutshetuan) if params[:attachment]
        format.html { redirect_to @aboutshetuan, notice: 'Aboutshetuan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aboutshetuan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aboutshetuans/1
  # DELETE /aboutshetuans/1.json
  def destroy
    @aboutshetuan = Aboutshetuan.find(params[:id])
    @aboutshetuan.destroy

    respond_to do |format|
      format.html { redirect_to aboutshetuans_url }
      format.json { head :no_content }
    end
  end
end
