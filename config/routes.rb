Rails.application.routes.draw do
  #vou subistituir a primeira pagina padrão do rails por esta..
  #to para onde ele vai execultar esta ação => então teremos o nomedacontroller#nomedaaction
  root to: "pages#index"
  
  #usaremos o verbo get, rota sobre => sendo direcionado controller-pages#action-sobre
  get 'sobre', to: 'pages#sobre'
  #usaremos o verbo get, rota contato => sendo direcionado controller-pages#action-contato
  get 'contato', to: 'pages#contato'
end
