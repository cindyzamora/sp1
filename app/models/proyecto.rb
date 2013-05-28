class Proyecto < ActiveRecord::Base
  attr_accessible :descripcion, :fecha_cierre, :fecha_inicio, :fecha_limite, :usuario_id, :monto_actual, :monto_total, :nombre, :status, :visible
  belongs_to :usuario

end
