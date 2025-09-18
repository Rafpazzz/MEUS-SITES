class CreatePessoas < ActiveRecord::Migration[8.0]
  def change
    create_table :pessoas do |t|
      t.string :nome, limit:80
      t.date :dt_nas
      t.float :altura
      t.string :endereco

      t.timestamps
    end
  end
end
