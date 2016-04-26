class PostsController < ApplicationController

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: "New post added!"
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title, :body))
        redirect_to @post, notice: "Your post has been updated!"
      else
        render 'edit'
      end
    end

  def destroy
    @post= Post.find(params[:id])

    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:username, :title, :body)
  end

end
