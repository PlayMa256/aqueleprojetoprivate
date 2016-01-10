class RenameTableReclamacao < ActiveRecord::Migration
  def change
    rename_table :reclamacaos, :reclamacoes
  end
end