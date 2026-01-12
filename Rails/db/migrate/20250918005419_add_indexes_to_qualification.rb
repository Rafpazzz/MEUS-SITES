class AddIndexesToQualification < ActiveRecord::Migration[8.0]
  def change
    add_index :qualificacaos, :cliente_id
    add_index :qualificacaos, :restaurante_id
  end
end
