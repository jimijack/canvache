class GalleriesController < ApplicationController

  def new
    @gallery = Gallery.new
    #@gallery.user = current_user_id
  end

  def show
    @gallery = current_user.gallery
  end


  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      redirect_to '/home'
    else
      render :new
    end
  end

  private
    # Implement Strong Params
    def gallery_params
      params.require(:gallery).permit(:name, :street_address, :city, :state, :zip_code, :website, :genres, :days_open, :hours_open, :img_uri, :user_id)
    end

end
