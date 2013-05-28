class User < ActiveRecord::Base
 
 # attr_accessor :password_confirmation
 # attr_protected 
  attr_accessible :password, :apellido, :email, :fecha_registro, :nombre, :telefono, :user
  validates_confirmation_of :password
  validates_confirmation_of :email, :message => "Ingreso de correo"

 

  
  end	


