class PublicationController < ApplicationController
  before_action :find_post, only: %i[create destroy]

  def create
    authorize! @post, to: :publish?, with: PostPolicy

    if @post.update(status: "published")
      redirect_to @post, notice: "Post was successfully published"
    else
      render :show, alert: "Post wasn't published"
    end
  end

  def destroy
    authorize! @post, to: :unpublish?, with: PostPolicy

    if @post.update(status: "draft")
      redirect_to @post, notice: "Post was successfully back to draft"
    else
      render :show, alert: "Post wasn't back to draft"
    end
  end

  private

  def find_post
    @post = Post.kept.find(params[:post_id])
  end
end
