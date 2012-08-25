class ImagecommentsController < ApplicationController
    def create
        @image = Image.find(params[:image_id])
        @imagecomment = @image.imagecomments.create(params[:imagecomment])
        redirect_to image_path(@image)
    end
    
    
    
    
end
