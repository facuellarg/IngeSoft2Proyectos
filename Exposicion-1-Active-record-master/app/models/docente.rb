class Docente < ApplicationRecord
    belongs_to:estudiante
    belongs_to:asignaturas
    has_one:facultad
end
