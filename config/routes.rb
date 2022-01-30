Rails.application.routes.draw do
  #vou subistituir a primeira pagina padrão do rails por esta..
  #to para onde ele vai execultar esta ação => então teremos o nomedacontroller#nomedaaction
  root to: "pages#index"
end
