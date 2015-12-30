class CreateReplicas < ActiveRecord::Migration
  def change
    create_table :replicas do |t|
      t.integer :usuario_id
      t.integer :reclamacao_id
      t.text :conteudo

      t.timestamps null: false
    end
  end
end
