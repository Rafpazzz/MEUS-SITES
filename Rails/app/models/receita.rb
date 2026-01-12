class Receitum < ApplicationRecord
    belongs_to :prato

    validates :conteudo, 
        presence: { message: "- deve ser adcionado o conteudo"},
        uniqueness: { message: "- conteudo ja cadastrado", case_sensitive: false}
end
