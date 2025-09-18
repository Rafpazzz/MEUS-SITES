class Restaurante < ApplicationRecord
    has_many :qualificacao
    has_and_belongs_to_many :pratos
end
