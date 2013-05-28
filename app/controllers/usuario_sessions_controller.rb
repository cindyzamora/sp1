class UsuarioSessionsController < ApplicationController
	def new
		@usuario = Usuario.new
	end
	def create
		if @usuario = login(params[:username],params[:password])
			if @usuario.tipo_usuario == 1
				redirect_back_or_to(proyectos_path,message: "Login Exitoso")
			else
				redirect_back_or_to(index_proyecto_userprojects_path,message: "Login Exitoso")
			end	
		else
			flash.now[:alert] = "Algo salio mal con el login"
			render action: :new
		end	
	end	
	def destroy
		logout
		redirect_to(:usuarios, message: "Logged Out")
	end	
end	