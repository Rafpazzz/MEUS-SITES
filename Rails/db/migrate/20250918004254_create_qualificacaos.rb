class CreateQualificacaos < ActiveRecord::Migration[8.0]
  def change
    create_table :qualificacaos do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :restaurante, null: false, foreign_key: true
      t.float :nota
      t.float :valor_gasto

      t.timestamps
    end
  end
end
