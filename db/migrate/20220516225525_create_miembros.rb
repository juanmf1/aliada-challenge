class CreateMiembros < ActiveRecord::Migration[7.0]
  def change
    create_table :miembros do |t|
      t.string :nombre
      t.string :apellido
      t.timestamps
    end
  end
end
