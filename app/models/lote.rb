# encoding: UTF-8

class Lote < ActiveRecord::Base
 
 include Sip::Localizacion

  has_many :articulos, foreign_key: "lote_id", 
    dependent: :destroy, class_name: 'Sal7711Gen::Articulo'
  
  belongs_to :usuario, foreign_key: "usuario_id", 
    validate: true, class_name: 'Usuario'
  belongs_to :departamento, foreign_key: "canddepartamento_id", 
    validate: true, class_name: 'Sip::Departamento'
  belongs_to :municipio, foreign_key: "candmunicipio_id", 
    validate: true, class_name: 'Sip::Municipio'
  belongs_to :categoriaprensa, foreign_key: "candcategoriaprensa_id", 
    validate: true, class_name: 'Sal7711Gen::Categoriaprensa'
  belongs_to :fuenteprensa, foreign_key: "candfuenteprensa_id", 
    validate: true, class_name: 'Sip::Fuenteprensa'

  campofecha_localizado :candfecha
end
