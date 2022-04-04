class PostsController < ApplicationController
  before_action :find_post, only: %i[show edit update destroy]

  def new
    @post = Post.new

    authorize! @post, to: :create?, with: PostPolicy
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: "Post was successfully created"
    else
      render :new, alert: "Post wasn't created"
    end
  end

  def index
    @posts = Post.kept

    authorize! "posts", to: :index?, with: PostPolicy
  end

  def show
    authorize! @post, to: :show?
  end

  def edit
    authorize! @post, to: :update?
  end

  def update
    authorize! @post, to: :update?

    if @post.update(post_params)
      redirect_to @post, notice: "Post was successfully updated"
    else
      render :edit, alert: "Post wasn't updated"
    end
  end

  def destroy
    authorize! @post, to: :delete?

    redirect_to posts_url, notice: "Post was successfully deleted" if @post.discard
  end

  private

  def post_params
    params.require(:post).permit(:title, :content).merge!(user_id: current_user.id, status: "draft")
  end

  def find_post
    @post = Post.kept.find(params[:id])
  end
end
