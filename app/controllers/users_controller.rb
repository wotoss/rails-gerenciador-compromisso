class UsersController < ApplicationController
    # new vai renderizaro o formlário
    def new
     @user = User.new 
    end

    #create realmente vai receber o post 
    def create
    #params ela quem vai trazer os parametros da requisição
    @user = User.new(user_params)
    if @user.save
    # flash o reails utiliza para enviar msg para o usuário...    
      flash[:success] = 'Usuário inserido com sucesso'  
    # redirect_to vai redirecionar para a pagina index ou seja root  
      redirect_to root_url
    else
     # caso não seja salva ele vai renderizar a pagina new.   
      render 'new'
    end
 end

  private

    def user_params
       params.require(:user).permit(:email, :name, :password, :password_confirmation)  
    end

end
