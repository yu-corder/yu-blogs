class YuBlogsController < ApplicationController
  before_action :search_params
  before_action :genre_get, only: [:index, :show, :search]
  layout 'blogs'

  def index
    @data = Blogpost.order('created_at desc').page params[:page]
  end

  def genre
    @genre = Bloggenre.find params[:id]
    @data = Blogpost.where('bloggenre_id = ?',params[:id]).order('created_at desc').page params[:page]
    @results = @q.result.page params[:page]
  end

  def show
    @blogpost = Blogpost.find(params[:id])
    @results = @q.result.page params[:page]
  end

  def search 
    @results = @q.result.page params[:page]
  end

  private

  def search_params
    @q = Blogpost.order('created_at desc').ransack(params[:q])
  end

  def genre_get
    @genre = Bloggenre.all
  end
end
