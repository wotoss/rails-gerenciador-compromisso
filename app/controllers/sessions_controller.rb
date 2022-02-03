class SessionsController < ApplicationController
  #controlador onde mora a logica do nosso login.
  def new
    
   redirect_to user_path(current_user) if user_signed_in? 
  end

  def create
    
    user = User.find_by(email: params[:session][:email].downcase)
    #vai autenticar o usuario se a senha estiver correta
    if user && user.authenticate(params[:session][:password])
      sign_in(user)
      redirect_to products_path
    else
      flash.now[:danger] = 'Email ou senha invalidos'
      render 'new'
    end
  end

  def destroy
    sign_out
    flash[:success] = 'Logout com sucesso'
    redirect_to entrar_path
  end
end
