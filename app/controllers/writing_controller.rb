class WritingController < ApplicationController
    def index
        @writing = Writing.all
    end
end