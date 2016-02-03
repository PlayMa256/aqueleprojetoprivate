class UsuariosController < ApplicationController
    def medicos
        @medicos = User.where('crm is not null')
        render json: @medicos
    end
end
