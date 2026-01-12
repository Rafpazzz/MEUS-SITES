class AddColumnEnderecoToRestaurante < ActiveRecord::Migration[8.0]
  def change
    add_column :restaurantes, :endereco, :string
  end
end
