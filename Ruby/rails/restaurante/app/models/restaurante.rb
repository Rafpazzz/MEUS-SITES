#encoding: utf-8

class Restaurante < ApplicationRecord
    has_many :qualificacoes
    has_and_belongs_to_many :pratos

    validates :nome, :endereco, :especialidade, presence: {message: "Campos nome, esdereço e especialidade nao podem ficar fazios"}

    validates :nome, uniqueness: {
        scope: :endereco,
        message: "já existe um cadastro com esse endereço"
    }
end
