class CreateJoinTablePratosRestaurante < ActiveRecord::Migration[8.0]
  def change
    create_join_table :pratos, :restaurantes do |t|
      # t.index [:prato_id, :restaurante_id]
      # t.index [:restaurante_id, :prato_id]
      t.index :prato_id
      t.index :restaurante_id
    end
  end
end
