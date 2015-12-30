class Reclamacao < ActiveRecord::Base
    has_many :usuario, :foreign_key => :usuario_reclamante_id
    has_many :usuario, :foreign_key => :usuario_critiado_id
end
