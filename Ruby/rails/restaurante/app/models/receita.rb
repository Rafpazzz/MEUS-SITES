class Receita < ApplicationRecord
    belongs_to :pratos

    validate :prato_id, :conteudo presence: {message: "conteudo prato_id e conteudo devem ser preenchidos"}

    validates_associated :prato
end
