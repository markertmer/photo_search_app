class ImagesController < ApplicationController

  def search
    # if params[:keyword] == ""
    #   error
    # else
    @images = ImageFacade.get_images(params[:keyword])
  end
end
