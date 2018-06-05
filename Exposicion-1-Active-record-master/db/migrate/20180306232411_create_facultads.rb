class CreateFacultads < ActiveRecord::Migration[5.1]
  def change
    create_table :facultads do |t|
      t.integer :id
      t.string :name
      t.belongs_to :docente, index: true
      t.timestamps
    end
  end
end
