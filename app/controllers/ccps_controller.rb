class CcpsController < ApplicationController
    def index
        @ccps = Ccp.all
    end

    def show
        @ccp = Ccp.find(params[:id])
    end

    def new
        @ccp = Ccp.new
    end

    def create
        c = Ccp.create(par)
        redirect_to c
    end

    private

    def par
        params.require(:ccp).permit(:name)
    end
end
