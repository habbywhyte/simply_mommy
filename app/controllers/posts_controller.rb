class PostsController < ApplicationController
# looks good overall
# I encourage you to look into how you can utilize your user model to authorize the ability edit/destroy posts.
# As it stands now, any user can edit or destroy anything. It would be nice if they couldn't
# and only the user that creates the post can edit/destroy it.

  def index
    # :+1: for ordering! noice
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
    @comment = @post.comments.build
    if @post.save
      flash[:success] = "New post added!"
      redirect_to @post
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
      flash[:success] = "Your post has been updated!"
        redirect_to @post
      else
        render 'edit'
      end
    end

  def destroy
    @post= Post.find(params[:id])

    @post.destroy
    flash[:success] = "Your post was successfully deleted."
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:username, :title, :body)
  end

end
