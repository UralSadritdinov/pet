class PostPolicy < ApplicationPolicy
  def create?
    true
  end

  def update?
    owner?
  end

  def delete?
    owner?
  end
end
