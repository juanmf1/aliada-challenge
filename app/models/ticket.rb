class Ticket < ApplicationRecord

    ABI = "Abierto"
    PRO = "En progreso"
    RES = "Resuelto"
    REE = "Necesita reembolso"

    STATUS_ARR= [ABI,PRO,RES,REE]

    belongs_to :miembro

    validates_presence_of :nombre, :status, :miembro

    def handle
        return self.nombre
    end
end
