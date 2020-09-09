class TestsController < ApplicationController
    def index
        @tests = Text.all
    end
    
    def show
        @test = Text.find(params[:id])
    end
end
