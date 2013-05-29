class HomeController < ApplicationController
  def inicio
  	 @proyectos = Proyecto.order("created_at DESC")
  end
end
