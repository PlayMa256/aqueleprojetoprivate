class ReclamacoesController < ApplicationController
    layout 'painel'
    def new
       @reclamacao = Reclamacao.new
       @currentuser = current_user.id
    end
    
    def create
        @reclamacao = Reclamacao.new reclamacao_params
        @reclamacao.usuario_reclamante = current_user
        if @reclamacao.save
            flash[:success] = "criado com sucesso"
        else
            flash[:error] = "falha ao criar"
        end
            
        redirect_to paginainicial_path
    end
    
    def index
        @todasReclamacoes = Reclamacao.all
    end
    
    def show
        @reclamacao = Reclamacao.find(params[:id])
    end
    
    private
        def reclamacao_params
            #inserir usuario_reclamado_id nos parametros
            params.require(:reclamacao).permit(:titulo, :conteudo)
        end
end
