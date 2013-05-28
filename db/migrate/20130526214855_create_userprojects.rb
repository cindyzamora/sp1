class CreateUserprojects < ActiveRecord::Migration
  def change
    create_table :userprojects do |t|
      t.integer :usuario_id
      t.integer :proyecto_id
      t.float :monto, :null => false 
      t.timestamp :fecha_monto,	 :null => false

      t.timestamps
    end
  end
end
