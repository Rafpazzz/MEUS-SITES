# app/models/qualificacao.rb

class Qualificacao < ApplicationRecord

  belongs_to :cliente
  belongs_to :restaurante

  # Garante que nota e valor_gasto sejam sempre preenchidos.
  validates :nota, :valor_gasto, presence: { message: "deve ser preenchido" }

  # Validação para o campo :nota
  validates :nota, numericality: {
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 10,
    message: "deve ser um número entre 0 e 10"
  }

  # Validação para o campo :valor_gasto
  validates :valor_gasto, numericality: {
    greater_than: 0,
    message: "deve ser um número maior que 0"
  }

  validates_associated :cliente, :restaurante
end