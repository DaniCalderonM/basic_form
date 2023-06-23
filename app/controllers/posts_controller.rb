class PostsController < ApplicationController
  def index
    @posts = Post.all
    # pp @posts puede servir para debugear
  end

  def new
    #captura los datos del formulario
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)

    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end 

  private

  def posts_params
    params.require(:post).permit(:title, :content)
  end
end
