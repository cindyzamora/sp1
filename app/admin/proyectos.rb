ActiveAdmin.register Proyecto do


    show do |proyecto|
      attributes_table do
      	if :status == 1
        	row "Activo"
        else
        	row "Inactivo"
        end
        if :visible == 1
        	row "Visible"
        else
        	row "No Visible"
        end
       
      end
      active_admin_comments
    end
end
