class Asignatura < ApplicationRecord
    has_many:carrera
    has_one:docente
    belongs_to:grupo
end
