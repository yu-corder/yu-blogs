class BlogpostsController < ApplicationController
    layout 'blog'
    before_action :authenticate_account!
    def index
        @data = Blogpost.all.order('created_at desc')
    end

    def new
        @blogpost = Blogpost.new
        @genre = Bloggenre.all
    end

    def create
        @blogpost = Blogpost.new
        if request.post? then
            @blogpost = Blogpost.create blogposts_params
            redirect_to '/blogposts'
        end
    end

    def edit
        @blogpost = Blogpost.find params[:id]
        @genre = Bloggenre.all
    end

    def update
        @blogpost = Blogpost.find(params[:id])
        @genre = Bloggenre.all
        if request.patch? then
            @blogpost.update blogposts_params
            redirect_to '/blogposts'
        end
    end

    def destroy
        @blogpost = Blogpost.find(params[:id])
        if request.post? then
            @blogpost.destroy
            redirect_to '/blogposts'
        end
    end
    
    private
    def blogposts_params
        params.require(:blogpost).permit(:title, :read, :content, :bloggenre_id, :image)
    end
end
