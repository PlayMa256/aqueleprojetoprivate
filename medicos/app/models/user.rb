class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :usuario_reclamente, class_name: "Reclamacao", foreign_key: "usuario_reclamante_id"
    has_many :usuario_reclamado, class_name: "Reclamacao", foreign_key: "usuario_reclamado_id"
end
