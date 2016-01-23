class AddEspecializacaoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :especializacao, :string
  end
end
