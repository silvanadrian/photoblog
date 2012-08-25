class ImagesController < ApplicationController
    def show
        @image = Image.find(params[:id])
        @exif = EXIFR::JPEG.new(['public/assets/images/' , @image.id, '/category/' , @image.photo_file_name].join(""))
        respond_to do |format|
            format.html # show.html.erb
            format.json { render :json => @post }
        end
    end
    
    
    
end
