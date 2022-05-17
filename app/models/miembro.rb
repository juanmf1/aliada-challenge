class Miembro < ApplicationRecord
    has_many :tickets

    def handle
        return "#{self.nombre} #{self.apellido}" 
    end
end
