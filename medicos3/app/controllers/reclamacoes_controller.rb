class ReclamacoesController < ApplicationController
    def index
        #mostra todos
        @todasReclamacoes = Reclamacao.all
    end
    def create
        #aqui é para criar
        @novaReclamacao = Reclamacao.new(reclamacao_param)
        @novaReclamacao.usuario_reclamante_id = current_user
        @novaReclamacao.save
        
    end
    def new
        #aqui chama a view de criar
        @novaReclamacao = Reclamacao.new 
    end
    
    def edit
        #chama a view de edit
    end
    def show
        #mostrar cada um
    end
    def update
        #update
    end
    
    def destroy
       #destroy
    end
    
    private
		def reclamacao_params
			params.require(:reclamacao).permit(:titulo, :conteudo)
		end
end
