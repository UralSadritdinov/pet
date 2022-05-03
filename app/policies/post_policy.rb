class PostPolicy < ApplicationPolicy
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
