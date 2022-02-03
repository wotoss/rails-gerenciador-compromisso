class AddUserToProducts < ActiveRecord::Migration[6.1]
  def change
    #comando pos tabela criada gerei foreign_key
    #comando => rails g migration add_user_to_products user:references
    add_reference :products, :user, foreign_key: true
  end
end
