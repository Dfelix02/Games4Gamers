class TestScoresController < ApplicationController
    def index
        @testscores = @current_user.testscores
    end

end
