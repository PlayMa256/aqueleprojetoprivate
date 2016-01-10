class Reclamacao < ActiveRecord::Base
    belongs_to :usuario_reclamante, class_name: "User"
    belongs_to :usuario_reclamado, class_name: "User"
end
