class Ticket < ApplicationRecord

    ABI = "Abierto"
    PRO = "En progreso"
    RES = "Resuelto"
    REE = "Necesita reembolso"

    STATUS_ARR= [ABI,PRO,RES,REE]


    # belongs_to :miembro

    def handle
        return self.nombre
    end
end
