class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.integer :tipo

      t.timestamps null: false
    end
  end
end
