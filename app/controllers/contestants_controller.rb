class ContestantsController < ApplicationController
    def index
        @contestants = Contestant.find(params[:id])
    end
end