# app/models/prato.rb

class Prato < ApplicationRecord

  has_and_belongs_to_many :restaurantes
  has_one :receita

  validates :nome,
            presence: { message: "do prato deve ser preenchido" },
            uniqueness: { message: "do prato já cadastrado" }

  validate :validate_presence_of_more_than_one_restaurante

  private
  
  def validate_presence_of_more_than_one_restaurante
    if restaurantes.empty?
      errors.add(:restaurantes, "deve pertencer a pelo menos um restaurante")
    end
  end
end