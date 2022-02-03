class Product < ApplicationRecord
 #só podera acessar o cadastro de produto usuário logados 
 
 #validações
 validates :name, presence: true, length: { maximum: 50 }
 validates :description, presence: true

 #este produto pertence ao usuário
 #onde está o belongs_to é onde teremos a chave estrangeira na base de dados
 belongs_to :user
end
