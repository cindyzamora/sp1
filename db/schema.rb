# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130526214855) do

  create_table "proyectos", :force => true do |t|
    t.string   "nombre",                        :null => false
    t.text     "descripcion",                   :null => false
    t.float    "monto_total",                   :null => false
    t.float    "monto_actual", :default => 0.0
    t.datetime "fecha_inicio"
    t.date     "fecha_limite"
    t.datetime "fecha_cierre"
    t.integer  "status",       :default => 1
    t.integer  "visible",      :default => 1
    t.integer  "usuario_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "userprojects", :force => true do |t|
    t.integer  "usuario_id"
    t.integer  "proyecto_id"
    t.float    "monto",       :null => false
    t.datetime "fecha_monto", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "username",         :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "telefono"
    t.date     "fecha_registro"
    t.integer  "tipo_usuario"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
