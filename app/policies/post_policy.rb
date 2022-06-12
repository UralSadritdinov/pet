class PostPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def create?
    user.present?
  end

  def update?
    owner?
  end

  def delete?
    owner?
  end

  def publish?
    owner? && record.draft?
  end

  def unpublish?
    owner? && record.published?
  end
end
