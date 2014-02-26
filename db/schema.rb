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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140226092003) do

  create_table "administradors", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cursos", force: true do |t|
    t.string   "nombre"
    t.integer  "duracion"
    t.float    "precio"
    t.integer  "capacidad_curso"
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facturas", force: true do |t|
    t.integer  "vecino_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fichas", force: true do |t|
    t.integer  "vecino_id"
    t.integer  "administrador_id"
    t.date     "fecha"
    t.string   "descripcion"
    t.float    "importe"
    t.boolean  "pagada"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "factura_id"
  end

  create_table "inscripcions", force: true do |t|
    t.integer  "vecino_id"
    t.integer  "curso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materia", force: true do |t|
    t.string   "nombre"
    t.integer  "horas"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profesor_id"
  end

  create_table "materia_cursos", force: true do |t|
    t.integer  "materium_id"
    t.integer  "curso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profesors", force: true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "direccion"
    t.string   "telefono"
    t.float    "sueldo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vecinos", force: true do |t|
    t.string   "DNI"
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "direccion"
    t.string   "cod_postal"
    t.string   "ciudad"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
