class Replica < ActiveRecord::Base
    belongs_to :reclamacao, :foreign_key => :reclamacao_id
    has_many :usuario, :foreign_key => :usuario_id
end
