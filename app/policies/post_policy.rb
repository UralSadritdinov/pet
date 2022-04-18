class PostPolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    owner?
  end

  def delete?
    owner?
  end
end
