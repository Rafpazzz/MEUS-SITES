class Cliente < ApplicationRecord
    #attr_accessible :nome, :idade #cria um whitelist para quais atribtos podem ser atribuidos

    has_many :qualificacao
    
    validates :nome, 
        presence: { message: "- deve ser adcionado o nome"},
        uniqueness: { message: "- nome ja cadastrado", case_sensitive: false}
    
    validates :idade,
        numericality: {
            greater_than: 0,
            less_than: 100,
            message: "- a idade deve ser um numero entre 0 e 100"
        }
end