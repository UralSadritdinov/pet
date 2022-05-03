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
    record.draft? && owner?
  end

  def unpublish?
    record.published? && owner?
  end
end
