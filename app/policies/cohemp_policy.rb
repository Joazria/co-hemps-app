class CohempPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    # qualquer um consegue criar um cohemp
    def create?
      return true
    end

    # Só o usuário pode atualizar
    # Ele "sente" a ativação do método update no controller e verifica se o usuário tá autorizado

    def update?
      record.user == user
      # - record: the restaurant passed to the `authorize` method in controller
      # - user:   the `current_user` signed in with Devise.
    end

    # Mesma coisa do que o acima
    def destroy?
      record.user == user
    end
  end
end
