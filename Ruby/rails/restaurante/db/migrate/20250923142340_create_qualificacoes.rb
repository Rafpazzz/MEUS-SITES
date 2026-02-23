# db/migrate/XXXXXXXXXXXXXX_create_qualificacoes.rb

class CreateQualificacoes < ActiveRecord::Migration[8.0]
  def change
    create_table :qualificacoes do |t|
      # Forma correta para relações (já cria o índice)
      t.references :cliente, null: false, foreign_key: true
      t.references :restaurante, null: false, foreign_key: true

      # Tipo float é aceitável para nota, mas integer também é uma opção
      t.float :nota

      # Forma correta para dinheiro
      t.decimal :valor_gasto, precision: 10, scale: 2

      t.timestamps
    end
  end
end