class AddColumnNomeToRestaurante < ActiveRecord::Migration[8.0]
  def change
    add_column :restaurantes, :nome, :string
  end
end
