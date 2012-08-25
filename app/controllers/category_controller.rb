class CategoryController < ApplicationController
    # GET /posts
    # GET /posts.json
    def index
        @categories = Category.all
        @images1 = Image.find(:all, :conditions => {:category_id => 1},:order => "id DESC",:limit => 1)
        @images2 = Image.find(:all, :conditions => {:category_id => 2},:order => "id DESC",:limit => 1)
        @images3 = Image.find(:all, :conditions => {:category_id => 3},:order => "id DESC",:limit => 1)
        @images4 = Image.find(:all, :conditions => {:category_id => 4},:order => "id DESC",:limit => 1)
        @images5 = Image.find(:all, :conditions => {:category_id => 5},:order => "id DESC",:limit => 1)
        @images6 = Image.find(:all, :conditions => {:category_id => 6},:order => "id DESC",:limit => 1)
        @images7 = Image.find(:all, :conditions => {:category_id => 7},:order => "id DESC",:limit => 1)
        @images = @images1 | @images2 | @images3 | @images4 | @images5 | @images6 | @images7
        respond_to do |format|
            format.html # index.html.erb
            format.json { render :json => @posts }
        end
    end
    
    # GET /posts/1
    # GET /posts/1.json
    def show
        @categories = Category.find(params[:id])
        @images = Image.all
        @categories = 
        respond_to do |format|
            format.html # show.html.erb
            format.json { render :json => @post }
        end
    end
    
   

end
