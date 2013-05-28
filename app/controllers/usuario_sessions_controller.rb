class UsuarioSessionsController < ApplicationController
	def new
		@usuario = User.new
		
	end
	def create
		if @usuario = login(params[:user],params[:password])
			redirect_back_or_to(users_path, message: "login Exitoso")
		else
			flash.now[:alert] = "Algo salio mal con el login"	
			render action: :new
		end	
	end

	def destroy
		logout
		redirect_to(:usuarios, message: "Loggued Out")
	end

end		