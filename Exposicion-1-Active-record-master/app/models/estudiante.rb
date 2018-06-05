class Estudiante < ApplicationRecord
    has_one:carrera
    has_many:docente
end
