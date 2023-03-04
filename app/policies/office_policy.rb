class OfficePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  # anyone can view all offices
  def index?
    true
  end

  # anyone can see the office page
  def show?
    true
  end

  # anyone can list an office space
  def new?
    return create?
  end

  def create?
    true
  end

  # to edit/update or destroy an office space you must own that office
  def edit?
    return update?
  end

  def update?
    return record.user == user
  end

  def destroy?
    return record.user == user
  end
end
