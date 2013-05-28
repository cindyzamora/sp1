class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :nombre,  :null => false 
      t.text :descripcion,  :null => false 
      t.float :monto_total,  :null => false 
      t.float :monto_actual,  :default => 0.0
      t.timestamp :fecha_inicio
      t.date :fecha_limite, :default => nil
      t.timestamp :fecha_cierre
      t.integer :status, :default => 1 
      t.integer :visible, :default => 1
      t.integer :usuario_id

      t.timestamps
    end
  end
end
