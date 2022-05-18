class AddServicioIdToTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :servicio_id, :integer
  end
end
