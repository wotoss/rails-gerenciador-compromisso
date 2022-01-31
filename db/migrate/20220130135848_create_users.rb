class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    #vai criar uma tabela users no banco com os seguintes campos email, name, password_digest
    create_table :users do |t|
    #estou fazendo esta configuração em mãos, não foi o scaffold  
    #estou dizendo que o email não poderá ser null e o padrão eu quero como string vazia
      t.string :email, null: false, default: ''
    #estou dizendo que o name não poderá ser null e o padrão eu quero como string vazia  
      t.string :name, null: false, default: ''
    #estou dizendo que o password_digest não poderá ser null e o padrão eu quero como string vazia 
      t.string :password_digest, null: false, default: ''

      t.timestamps
    end
  end
end
