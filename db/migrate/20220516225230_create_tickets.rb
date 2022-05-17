class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :nombre
      t.belongs_to :miembro
      t.string :status

      t.timestamps
    end
  end
end
