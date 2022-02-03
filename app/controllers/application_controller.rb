class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    
    include SessionsHelper

    private 
    #vamos exigir que certas rotas so sejam acessadas por usuario logado.
    def require_logged_in_user
      unless user_signed_in?
      flash[:danger] = 'Área restrita, por favor, realize o login'  
      redirect_to entrar_path
    end
  end
end
