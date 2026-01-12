class Qualificacao < ApplicationRecord
  belongs_to :cliente
  belongs_to :restaurante
end
