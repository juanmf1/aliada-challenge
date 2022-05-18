class Miembro < ApplicationRecord
  
    has_many :tickets

    validates_presence_of :nombre, :apellido

    def handle
        return "#{self.nombre} #{self.apellido}" 
    end
end
