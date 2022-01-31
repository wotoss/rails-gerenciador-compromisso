class User < ApplicationRecord
# ActiveRecord o rails vai inferi os atributos na classe.
# exemplo name, email e password
# não precisa declararmos ela já esta inserida. 

# var reforçar nossa segurança criando um hash da senha
# e tambem vai nos criar dois atributos virtuais password e o password_confirmation
# este atributos virtuais que não estão na base de dados vão fazer algumas validações para que o password sejá salvo na base de dados.
has_secure_password 

#criamos uma expressão regular...na variavel VALID_EMAIL_REGEX
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

validates :name, presence: true, length: { maximum: 50 }
validates :password, length: { minimum: 6 }
validates :email, presence: true, length: { maximum: 255 },
                        format: { with: VALID_EMAIL_REGEX },
           # faz com que este email seja unico => uniqueness
           # caix alta, caixa baixa => case_sensitive
                        uniqueness: { case_sensitive: true }
end
