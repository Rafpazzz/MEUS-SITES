class Cliente < ApplicationRecord
    has_many :qualificacoes

    validate :nome,
            presence: {message: "nome deve ser preenchido"},
            uniqueness: {message: "nome ja cadastrado"}

    validate :idade,
            numericality: {
                greater_than: 0,
                less_than: 100,
                message: "deve ser um numero entre 0 e 99"
            }
end
