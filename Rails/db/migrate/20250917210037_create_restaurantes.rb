class CreateRestaurantes < ActiveRecord::Migration[8.0]
  def change
    create_table :restaurantes do |t|
      t.timestamps
      t.struing :nome, limit: 80
      t.string :especialidade
    end
  end
end
