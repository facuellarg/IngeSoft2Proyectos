class CreateEstudiantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estudiantes do |t|
      t.integer :id
      t.string :name
      t.string :password
      t.string :email
      t.string :carrera

      t.timestamps
    end
  end
end
