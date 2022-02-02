module SessionsHelper
  #atraves deste modulo vamos gerenciar as questões de login e logout
   def sign_in(user)
     session[:user_id] = user.id
   end

   #realizar o logout
   def sign_out
    session.delete(:user_id)
   end

   # se a variavel  @current_user já tiver com usuario ela seta
   # porem se for nil ||= ela busca no banco
   def current_user
    @current_user ||= User.find_by(id: session[:user_id])
   end

   
   def user_signed_in?
     !current_user.nil?
   end
end
