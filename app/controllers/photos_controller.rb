class PhotosController < ApplicationController
  before_filter :the_album
  before_filter :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  
  def index
    @photos = Photo.where("album_id = ?", the_album).page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end


  def show
    @photo = Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end


  def new
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end


  def create
    @photo = @album.photos.new(params[:photo])
    if @photo.save

    else
      render :json => { "errors" => @photo.errors } 
    end
  end


  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to album_photos_path(@album) }
      format.json { head :no_content }
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  # POST /Photos
  # POST /Photos.json
  def update
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to @photo, notice: 'photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

end


private 

def the_album
  @album = Album.find(params["album_id"])
end