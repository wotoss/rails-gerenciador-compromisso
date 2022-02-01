Rails.application.routes.draw do
  

  #vou subistituir a primeira pagina padrão do rails por esta..
  #to para onde ele vai execultar esta ação => então teremos o nomedacontroller#nomedaaction
  root to: "pages#index"
  
  #usaremos o verbo get, rota sobre => sendo direcionado controller-pages#action-sobre
  get 'sobre', to: 'pages#sobre'
  #usaremos o verbo get, rota contato => sendo direcionado controller-pages#action-contato
  get 'contato', to: 'pages#contato'
  
  #entrar me direiona para a rota de cadastro de usuario
  get 'entrar', to: 'sessions#new'
  
  #entrar rota para criar o usuario
  post 'entrar', to: 'sessions#create'

  delete 'sair', to: 'sessions#destroy'

  #o rails já cria de forma rest-full todas as rotas padrões
  #quando montamos o scaffold ele já nos cria o resources como o CRUD encapsulado.
  resources :contacts
  #estou declarando quais as rotas rest o usuario poderá acessar.
  resources :users, only: [:new, :create, :show, :edit, :update]

  
end
