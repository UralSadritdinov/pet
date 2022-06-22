class PostsController < ApplicationController
  before_action :post, only: %i[show edit update destroy]

  def new
    authorize! :post, to: :create?

    @post = Post.new
  end

  def create
    authorize! :post, to: :create?

    result = ::Posts::Create.call(post_params: post_params)

    if result.success?
      redirect_to result.post, notice: "Post was successfully created"
    else
      render :new, alert: "Post wasn't created"
    end
  end

  def index
    authorize! :post, to: :index?

    @posts = Post.published.includes(:user).order(created_at: :desc)
  end

  def show
    authorize! to: :show?
  end

  def edit
    authorize! to: :update?
  end

  def update
    authorize! to: :update?

    result = ::Posts::Update.call(post: @post, post_params: post_params)

    if result.success?
      redirect_to result.post, notice: "Post was successfully updated"
    else
      render :edit, alert: "Post wasn't updated"
    end
  end

  def destroy
    authorize! to: :delete?

    result = ::Posts::Archive.call(post: @post)

    redirect_to posts_url, notice: "Post was successfully updated" if result.success?
  end

  private

  def post_params
    params.require(:post).permit(:title, :content).merge!(user_id: current_user.id)
  end

  def post
    @post ||= Post.kept.find(params[:id])
  end

  def implicit_authorization_target
    @post
  end
end
