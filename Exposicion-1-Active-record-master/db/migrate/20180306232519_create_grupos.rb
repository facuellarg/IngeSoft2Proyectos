class CreateGrupos < ActiveRecord::Migration[5.1]
  def change
    create_table :grupos do |t|
      t.integer :id
      t.string :asignatura
      t.string :horario

      t.timestamps
    end
  end
end
