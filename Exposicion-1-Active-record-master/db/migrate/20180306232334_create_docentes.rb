class CreateDocentes < ActiveRecord::Migration[5.1]
  def change
    create_table :docentes do |t|
      t.integer :id
      t.string :name
      t.string :password
      t.string :email
      t.string :facultad
      t.belongs_to :estudiante, index: true
      t.belongs_to :asignaturas, index: true
      t.timestamps
    end
  end
end
