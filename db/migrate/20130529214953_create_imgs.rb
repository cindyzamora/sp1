class CreateImgs < ActiveRecord::Migration
  def change
    create_table :imgs do |t|
      t.string :titulo
      t.string :extension
      t.integer :proyecto_id

      t.timestamps
    end
  end
end
