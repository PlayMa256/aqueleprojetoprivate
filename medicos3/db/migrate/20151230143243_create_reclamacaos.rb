class CreateReclamacaos < ActiveRecord::Migration
  def change
    create_table :reclamacaos do |t|
      t.integer :usuario_reclamante_id
      t.integer :usuario_reclamado_id
      t.string :titulo
      t.text :conteudo

      t.timestamps null: false
    end
  end
end
