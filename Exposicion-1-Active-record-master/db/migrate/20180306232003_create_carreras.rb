class CreateCarreras < ActiveRecord::Migration[5.1]
  def change
    create_table :carreras do |t|
      t.integer :id
      t.string :name
      t.string :planestudios
      t.belongs_to :estudiante, index: true
      t.timestamps
    end
  end
end
