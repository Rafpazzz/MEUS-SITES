class Prato < ApplicationRecord
    has_and_belongs_to_many :Restaurante
    has_one :receita

    validates :nome, 
        presence: { message: "- deve ser adcionado o nome"},
        uniqueness: { message: "- nome ja cadastrado", case_sensitive: false}
    
end
