class HomeController < ApplicationController
  def index
  	 @proyectos = Proyecto.order("created_at DESC")
  end
end
