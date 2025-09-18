class CreatePratosRestaurantesJoinTable < ActiveRecord::Migration[8.0]
  def change
    create_join_table :pratos, :restaurante do |t|
      t.index[:prato_id, :restaurante_id]
  end
end
