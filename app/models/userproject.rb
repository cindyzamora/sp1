class Userproject < ActiveRecord::Base
  attr_accessible :fecha_monto, :monto, :proyecto_id, :usuario_id
end
