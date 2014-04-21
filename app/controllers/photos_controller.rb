

class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end
 
  def show
    set_photo
  end

  def new
    @photo = Photo.new
  end
 
  def create
    @photo = Photo.new(photo_params)
 
    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @photo }
      else
        format.html { render action: 'new' }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end

  end
 
  def destroy
    set_photo
    @photo.destroy
    redirect_to photos_destroy_path, notice:  "The photo #{@photo.caption} has been deleted."
  end
 
private
  def set_photo
    
    @photo = Photo.find(params[:id])  

  end

  def photo_params
    params.require(:photo).permit( :caption, :attachment)
  end  
end
