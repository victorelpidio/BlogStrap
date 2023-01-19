class CategoryPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user&.admin? || user&.has_role?(:moderator)
        scope.all
      else
        raise Pundit::NotAuthorizedError
      end
    end
  end

  def index?
    user&.admin? || user&.has_role?(:moderator) #& serve para saber se esta logado ou nao
  end

  def create?
    user&.admin? || user&.has_role?(:moderator)
  end

  def update?
    user&.admin? || user&.has_role?(:moderator)
  end

  def destroy?
    user.admin?
  end
end