class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
  end

  def edit?
    is_owner?
  end

  def destroy?
  end
  
  def is_owner?
    record.user == user
  end

end
