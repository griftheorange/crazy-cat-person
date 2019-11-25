class CatsController < ApplicationController
    def new
        @ccp = Ccp.find(params[:ccp])
        @cat = Cat.new
    end

    def create
        p = params.permit(:ccp)
        c = params.require(:cat).permit(:name, :breed)
        cat = Cat.create(name: c[:name], breed: c[:breed], ccp_id: p[:ccp])
        redirect_to cat
    end

    def show
        @cat = Cat.find(params[:id])
    end
end
