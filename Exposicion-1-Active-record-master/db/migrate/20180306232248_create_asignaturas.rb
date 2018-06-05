class CreateAsignaturas < ActiveRecord::Migration[5.1]
  def change
    create_table :asignaturas do |t|
      t.integer :id
      t.string :name
      t.integer :codigo
      t.string :planestudios
      t.string :docente
      t.belongs_to :grupo, index: true
      t.timestamps
    end
  end
end
