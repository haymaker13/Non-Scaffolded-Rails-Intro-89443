class PostsController < ApplicationController
  def index
    @posts = Post.order('id DESC')
  end # Automatically loads app/views/posts/index.html.erb

  def show
    @post = Post.find(params[:id])
  end # Automatically loads app/views/posts/show.html.erb
  
  def new
    @post = Post.new
  end # Loads app/view/post/new.html.erb
  
  def create
    #The magic of creation happens here
  end #On success redirects to index, else uses new.html.erb
end
