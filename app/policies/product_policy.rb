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
    user && user.admin?
  end

  def edit?
    user && user.admin?
  end

  def destroy?
    user && user.admin?
  end
  
  private

  # def is_owner?
  #   record.user == user
  # end

  
end
# - record: the restaurant passed to the `authorize` method in controller
# - user:   the `current_user` signed in with Devise.
