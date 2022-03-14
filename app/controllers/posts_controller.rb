class PostsController < ApplicationController
  before_action :find_post, only: %i[show edit delete]

  def new
  end

  def create
    @post = Post.new(params).save
  end

  def index
    @posts = Post.kept
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
    render :index if @post.discard
  end

  private

  # def params
  # 	params.require(:post).permit(:title, :content)
  # end

  def find_post
    @post = Post.kept.find(params[:id])
  end
end
