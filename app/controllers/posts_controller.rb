class PostsController < ApplicationController
  before_action :find_post, only: %i[show edit update destroy]

  def new
    allowed_to? :create?, :post, with: PostPolicy

    @post = Post.new
  end

  def create
    authorize! "post", to: :create?, with: PostPolicy

    result = ::Posts::Create.call(post_params: post_params)

    if result.success?
      redirect_to result.post, notice: "Post was successfully created"
    else
      render :new, alert: "Post wasn't created"
    end
  end

  def index
    allowed_to? :index?, :posts, with: PostPolicy

    @posts = Post.published
  end

  def show
    allowed_to? :show?, with: PostPolicy
  end

  def edit
    allowed_to? :show?, with: PostPolicy
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

  # rubocop:disable Naming/MemoizedInstanceVariableName
  def find_post
    @post ||= Post.kept.find(params[:id])
  end
  # rubocop:enable Naming/MemoizedInstanceVariableName

  def implicit_authorization_target
    @post
  end
end
